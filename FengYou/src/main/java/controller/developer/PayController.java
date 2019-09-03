package controller.developer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradeRefundModel;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.request.AlipayTradeRefundRequest;
import com.alipay.api.response.AlipayTradeRefundResponse;

import pojo.Hotel;
import pojo.House;
import pojo.Intoinfo;
import pojo.Order;
import pojo.Realtimeinventory;
import pojo.User;
import service.developer.DeveloperHotelService;
import service.developer.DeveloperHouseService;
import service.developer.DeveloperOrderService;
import service.developer.DeveloperRealtimeinventoryService;
import util.AlipayConfig;

@Controller
public class PayController {

	@Autowired
	private DeveloperOrderService DeveloperOrderService;
	@Autowired
	private DeveloperHouseService DeveloperHouseService;
	@Autowired
	private DeveloperHotelService DeveloperHotelService;
	@Autowired
	private DeveloperRealtimeinventoryService realtimeinventoryService;
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	// refund
	@RequestMapping("/refund")
	public String refund(String orderId, HttpServletResponse response, HttpServletRequest request)
			throws IOException, AlipayApiException, ParseException {
		int userId = ((User) request.getSession().getAttribute("loginUser")).getId();
		if (request.getParameter("WIDout_trade_no") != null || request.getParameter("WIDtrade_no") != null) {
			int r = 0;
			if (orderId != null) {
				Order o = DeveloperOrderService.getOrderById(Integer.valueOf(orderId));
				o.setOrderStatus(3);
				int ref = DeveloperOrderService.updOrder(o);
				Realtimeinventory real = new Realtimeinventory();
				real.setHotelId(o.getHotelId());
				real.setHouseId(o.getHouseId());
				real.setRecordStopDate(format.parse(format.format(new java.util.Date())));
				Realtimeinventory re = realtimeinventoryService.queryRealtimeinventoryByHHid(real);
				if (re != null) {
					real.setStore(re.getStore() + o.getHouseCount());
					realtimeinventoryService.updRealtimeinventory(real);
				}
				r = DeveloperOrderService.updOrder(o);
			}
			if (r <= 0) {
				return "redirect:/toOrderDetails?userId=" + Integer.valueOf(userId);
			}
			// 商户订单号和支付宝交易号不能同时为空。 trade_no、 out_trade_no如果同时存在优先取trade_no
			// 商户订单号，和支付宝交易号二选一
			String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"), "UTF-8");
			// 支付宝交易号，和商户订单号二选一
			String trade_no = new String(request.getParameter("WIDtrade_no").getBytes("ISO-8859-1"), "UTF-8");
			// 退款金额，不能大于订单总金额
			String refund_amount = new String(request.getParameter("WIDrefund_amount").getBytes("ISO-8859-1"), "UTF-8");
			// 退款的原因说明
			String refund_reason = new String(request.getParameter("WIDrefund_reason").getBytes("ISO-8859-1"), "UTF-8");
			// 标识一次退款请求，同一笔交易多次退款需要保证唯一，如需部分退款，则此参数必传。
			String out_request_no = new String(request.getParameter("WIDout_request_no").getBytes("ISO-8859-1"),
					"UTF-8");
			/**********************/
			// SDK 公共请求类，包含公共请求参数，以及封装了签名与验签，开发者无需关注签名与验签
			AlipayClient client = new DefaultAlipayClient(AlipayConfig.URL, AlipayConfig.APPID,
					AlipayConfig.RSA_PRIVATE_KEY, AlipayConfig.FORMAT, AlipayConfig.CHARSET,
					AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.SIGNTYPE);
			AlipayTradeRefundRequest alipay_request = new AlipayTradeRefundRequest();

			AlipayTradeRefundModel model = new AlipayTradeRefundModel();
			model.setOutTradeNo(out_trade_no);
			model.setTradeNo(trade_no);
			model.setRefundAmount(refund_amount);
			model.setRefundReason(refund_reason);
			model.setOutRequestNo(out_request_no);
			alipay_request.setBizModel(model);

			AlipayTradeRefundResponse alipay_response = client.execute(alipay_request);
			System.out.println(alipay_response.getBody());
			return "redirect:/toOrderDetails?userId=" + Integer.valueOf(userId);
		}
		return "redirect:/toOrderDetails";
	}

	@RequestMapping("/fff")
	public String f(HttpServletResponse response, HttpServletRequest request) throws IOException {

		return "developer/Payzf";
	}

	// 支付
	@RequestMapping("/pay")
	public void pay(HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		// 获得初始化的AlipayClient
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.URL, AlipayConfig.APPID,
				AlipayConfig.RSA_PRIVATE_KEY, AlipayConfig.FORMAT, AlipayConfig.CHARSET, AlipayConfig.ALIPAY_PUBLIC_KEY,
				AlipayConfig.SIGNTYPE);

		// 设置请求参数
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(AlipayConfig.return_url);
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

		// 商户订单号，商户网站订单系统中唯一订单号，必填
		String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"), "UTF-8");
		// 付款金额，必填
		String total_amount = new String(request.getParameter("WIDtotal_amount").getBytes("ISO-8859-1"), "UTF-8");
		// 订单名称，必填
		String subject = new String(request.getParameter("WIDsubject").getBytes("ISO-8859-1"), "UTF-8");
		// 商品描述，可空
		String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"), "UTF-8");

		System.out.println("alipayRequest.getReturnUrl()=" + alipayRequest.getReturnUrl());
		System.out.println("alipayRequest.getNotifyUrl()=" + alipayRequest.getNotifyUrl());
		alipayRequest.setBizContent("{\"out_trade_no\":\"" + out_trade_no + "\"," + "\"total_amount\":\"" + total_amount
				+ "\"," + "\"subject\":\"" + subject + "\"," + "\"body\":\"" + body + "\","
				+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
		// 请求
		String result = null;
		try {
			result = alipayClient.pageExecute(alipayRequest).getBody();
		} catch (AlipayApiException e) {
			e.printStackTrace();
		}
		System.out.println(result);
		PrintWriter out = response.getWriter();
		out.println(result);
		out.flush();
	}

	// 支付成功后返回
	@RequestMapping("/returnurl")
	public String returnurl(HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		Map<String, String> params = new HashMap<String, String>();
		System.out.println("123.............");
		Map<String, String[]> requestParams = request.getParameterMap();
		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
				System.out.println(valueStr);
			}
			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");

			params.put(name, valueStr);

		}
		boolean signVerified = false;
		try {
			signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.CHARSET,
					"RSA2");
		} catch (AlipayApiException e) {
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();

		Order o = DeveloperOrderService.getOrderNew();
		o.setOrderStatus(1);
		int r = DeveloperOrderService.updOrder(o);
		if (signVerified) {
			return "redirect:/toIndex3?hotelId=" + o.getHotelId();
		} else {
			return "redirect:/toIndex";
		}
	}

	// 支付失败后，进入支付页面
	@RequestMapping("/toPayPage")
	public String subOrder(Model model, HttpSession session) throws ParseException {
		Order o = DeveloperOrderService.getOrderNew();
		House house = DeveloperHouseService.qeuryHouseByHouseId(o.getHouseId());
		Hotel hotel = DeveloperHotelService.getHotelById(o.getHotelId());
		model.addAttribute("order", o);
		model.addAttribute("house", house);
		model.addAttribute("hotel", hotel);
		java.util.Date curDate = format.parse(format.format(new java.util.Date()));
		java.util.Date end = format.parse(format.format(curDate.getTime() + 1000 * 60 * 30));
		model.addAttribute("orderId", o.getId());
		session.setAttribute("curDate", curDate);
		session.setAttribute("end", end);
		return "developer/order2";
	}

	@RequestMapping("/subOrder")
	public String subOrder(String houseId, String checkInDate, String checkOutDate, String email, String phone,
			String userNames, String place, String payAmount, String houseCount, String day, Model model,
			HttpSession session) throws ParseException {
		Intoinfo into = new Intoinfo();
		into.setPhone(phone);
		into.setEmail(email);
		into.setUserNames(userNames);
		int i = DeveloperOrderService.addIntoinfo(into);

		System.out.println(checkInDate + checkOutDate);
		if (i > 0 && userNames != null) {
			Order order = new Order();
			if (checkInDate != null && houseId != null && checkOutDate != null && email != null && phone != null
					&& userNames != null && place != null && payAmount != null && houseCount != null) {
				House house = DeveloperHouseService.qeuryHouseByHouseId(Integer.valueOf(houseId));
				Hotel hotel = DeveloperHotelService.getHotelById(house.getHotelId());
				order.setPresetItme(format.parse(format.format(new java.util.Date())));
				order.setCheckInDate(format.parse(format.format(format.parse(checkInDate))));
				order.setCheckOutDate(format.parse(format.format(format.parse(checkOutDate))));
				order.setHouseId(Integer.valueOf(houseId));
				order.setHotelId(hotel.getHotelId());
				order.setHouseCount(Integer.valueOf(houseCount));
				int intoInfoId = DeveloperOrderService.getIntoNew().getId();

				order.setIntoInfoId(intoInfoId);
				User loginUser = (User) session.getAttribute("loginUser");
				if (loginUser == null) {
					loginUser = new User();
					loginUser.setId(20);
				}
				order.setUserId(loginUser.getId());
				order.setOrderStatus(0);
				order.setPayType(1);
				order.setPayAmount(Double.valueOf(payAmount));
				order.setPlace(place);
				order.setRemarks(0);

				System.out.println(order.getPresetItme());
				order.setOrderNo("AVSD00" + order.getHotelId() + order.getHouseId() + order.getHouseCount()
						+ order.getUserId() + order.getIntoInfoId());
				int result = DeveloperOrderService.addOrder(order);
				if (result > 0) {
					Order o = DeveloperOrderService.getOrderNew();
					house = DeveloperHouseService.qeuryHouseByHouseId(o.getHouseId());
					hotel = DeveloperHotelService.getHotelById(o.getHotelId());
					model.addAttribute("order", o);
					model.addAttribute("house", house);
					model.addAttribute("hotel", hotel);
					model.addAttribute("day", day);
					Realtimeinventory real = new Realtimeinventory();
					real.setHotelId(o.getHotelId());
					real.setHouseId(o.getHouseId());
					real.setRecordStopDate(format.parse(format.format(new java.util.Date())));
					Realtimeinventory r = realtimeinventoryService.queryRealtimeinventoryByHHid(real);
					if (r == null) {
						r = new Realtimeinventory();
						r.setStore(10);
						r.setHotelId(o.getHotelId());
						r.setHouseId(o.getHouseId());
						r.setRecordDate(order.getCheckInDate());
						r.setRecordStopDate(order.getCheckOutDate());
						int re = realtimeinventoryService.addRealtimeinventory(r);
						if (re > 0) {
							r = realtimeinventoryService.queryRealtimeinventoryNew();
						}
					}
					r.setRecordDate(format.parse(format.format(new java.util.Date())));
					r.setRecordStopDate(
							format.parse(format.format(getNextDate(r.getRecordDate(), Integer.valueOf(day)))));
					r.setStore(r.getStore() - order.getHouseCount());
					realtimeinventoryService.updRealtimeinventory(r);
					int orderId = o.getId();
					java.util.Date curDate = o.getPresetItme();
					java.util.Date end = format.parse(format.format(curDate.getTime() + 1000 * 60 * 5));
					model.addAttribute("orderId", orderId);
					session.setAttribute("curDate", curDate);
					session.setAttribute("end", end);
					return "developer/order2";
				} else {

				}
			}

		}
		return "redirect:/toIndex";
	}

	// 获得几天后时间
	public Date getNextDate(java.util.Date date2, int day) {
		long addTime = 1; // 以1为乘以的基数
		addTime *= day; // 1天以后 （如果是30天以后，则这里是30）
		addTime *= 24; // 1天24小时
		addTime *= 60; // 1小时60分钟
		addTime *= 60; // 1分钟60秒
		addTime *= 1000; // 1秒=1000毫秒 //用毫秒数构造新的日期
		Date date = new Date(date2.getTime() + addTime);
		return date; // 返回结果
	}

}
