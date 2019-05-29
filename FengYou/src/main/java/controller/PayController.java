package controller;

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
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;

import pojo.Hotel;
import pojo.House;
import pojo.Intoinfo;
import pojo.Order;
import pojo.Realtimeinventory;
import pojo.User;
import service.HotelService;
import service.HouseService;
import service.OrderService;
import service.RealtimeinventoryService;
import util.AlipayConfig;

@Controller
public class PayController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private HouseService houseService;
	@Autowired
	private HotelService hotelService;
	@Autowired
	private RealtimeinventoryService realtimeinventoryService;

	@RequestMapping("/fff")
	public String f(HttpServletResponse response, HttpServletRequest request) throws IOException {

		return "developer/Payzf";
	}

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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();

		Order o =orderService.getOrderNew();
		o.setOrderStatus(1);
		int r = orderService.updOrder(o);
		if (signVerified) {
			return "order3";
		} else {
			return "redirect:/toIndex";
		}
	}

	@RequestMapping("/toPayPage")
	public String subOrder(Model model) {
		Order o = orderService.getOrderNew();
		House house = houseService.qeuryHouseByHouseId(o.getHouseId());
		Hotel hotel = hotelService.getHotelById(o.getHotelId());
		model.addAttribute("order", o);
		model.addAttribute("house", house);
		model.addAttribute("hotel", hotel);
		return "developer/order2";
	}
	//
	@RequestMapping("/subOrder")
	public String subOrder(String houseId, String checkInDate, String checkOutDate, String email, String phone,
			String userNames, String place, String payAmount, String houseCount, String day, Model model,
			HttpSession session) throws ParseException {
		Intoinfo into = new Intoinfo();
		into.setPhone(phone);
		into.setEmail(email);
		into.setUserNames(userNames);
		int i = orderService.addIntoinfo(into);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		if (i > 0 && userNames != null) {
			Order order = new Order();
			if (checkInDate != null && houseId != null && checkOutDate != null && email != null && phone != null
					&& userNames != null && place != null && payAmount != null && houseCount != null) {
				House house = houseService.qeuryHouseByHouseId(Integer.valueOf(houseId));
				Hotel hotel = hotelService.getHotelById(house.getHotelId());
				order.setCheckInDate(Date.valueOf(checkInDate));
				order.setCheckOutDate(Date.valueOf(checkOutDate));
				order.setHouseId(Integer.valueOf(houseId));
				order.setHotelId(hotel.getHotelId());
				order.setHouseCount(Integer.valueOf(houseCount));
				int intoInfoId = orderService.getIntoNew().getId();
				;
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
				order.setOrderNo("AVSD00" + order.getHotelId() + order.getHouseId() + order.getHouseCount()
						+ order.getUserId() + order.getIntoInfoId());
				int result = orderService.addOrder(order);
				if (result > 0) {
					Order o = orderService.getOrderNew();
					house = houseService.qeuryHouseByHouseId(o.getHouseId());
					hotel = hotelService.getHotelById(o.getHotelId());
					model.addAttribute("order", o);
					model.addAttribute("house", house);
					model.addAttribute("hotel", hotel);
					model.addAttribute("day", day);
					Realtimeinventory r = new Realtimeinventory();
					r.setHotelId(o.getHotelId());
					r.setHouseId(o.getHouseId());
					r = realtimeinventoryService.queryRealtimeinventoryByHHid(r);
					if (r == null) {
						r = new Realtimeinventory();
						r.setStore(10);
						r.setHotelId(o.getHotelId());
						r.setHouseId(o.getHouseId());
						r.setRecordDate(format.parse(format.format(new java.util.Date())));
						r.setRecordStopDate(
								format.parse(format.format(getNextDate(r.getRecordDate(), Integer.valueOf(day)))));
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

					return "developer/order2";
				} else {

				}
			}

		}
		return "redirect:/toIndex";
	}

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
