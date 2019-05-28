package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

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
import com.alipay.api.request.AlipayTradePagePayRequest;

import pojo.Hotel;
import pojo.House;
import pojo.Intoinfo;
import pojo.Order;
import pojo.User;
import service.HotelService;
import service.HouseService;
import service.OrderService;
import util.AlipayConfig;

@Controller
public class PayController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private HouseService houseService;
	@Autowired
	private HotelService hotelService;
	

	
	@RequestMapping("/subOrder")
	public String subOrder(String houseId,String checkInDate,String checkOutDate, String email, String phone, 
			String userNames,String place,String payAmount, String houseCount,String day, Model model,HttpSession session){
		Intoinfo into=new Intoinfo();
		into.setPhone(phone);
		into.setEmail(email);
		into.setUserNames(userNames);
		int i=orderService.addIntoinfo(into);
		if(i>0&&userNames!=null){
			Order order=new Order();
			if(checkInDate!=null&&houseId!=null&&checkOutDate!=null&&email!=null
					&&phone!=null&&userNames!=null&&place!=null
					&&payAmount!=null&&houseCount!=null){
				House house=houseService.qeuryHouseByHouseId(Integer.valueOf(houseId));
				Hotel hotel =hotelService.getHotelById(house.getHotelId());
				order.setCheckInDate(Date.valueOf(checkInDate));
				order.setCheckOutDate(Date.valueOf(checkOutDate));
				order.setHouseId(Integer.valueOf(houseId));
				order.setHotelId(hotel.getHotelId());
				order.setHouseCount(Integer.valueOf(houseCount));
				int intoInfoId=orderService.getIntoNew().getId();;
				order.setIntoInfoId(intoInfoId);
				User loginUser=(User)session.getAttribute("loginUser");
				if(loginUser==null){
					loginUser=new User();
					loginUser.setId(20);
				}
				order.setUserId(loginUser.getId());
				order.setOrderStatus(0);
				order.setPayType(1);
				order.setPayAmount(Double.valueOf(payAmount));
				order.setPlace(place);
				order.setRemarks(0);
				order.setOrderNo("AVSD00"+order.getHotelId()+order.getHouseId()+order.getHouseCount()+order.getUserId()+order.getIntoInfoId());
				int result=orderService.addOrder(order);
				if(result>0){
					Order o=orderService.getOrderNew();
					house=houseService.qeuryHouseByHouseId(o.getHouseId());
					hotel=hotelService.getHotelById(o.getHotelId());
					model.addAttribute("order", o);
					model.addAttribute("house", house);
					model.addAttribute("hotel", hotel);
					model.addAttribute("day", day);
					return "developer/order2";
				}else{
					
				}
			}
			
		}
		return "redirect:/toIndex";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public void pay(HttpServletResponse response,  HttpServletRequest request) throws IOException {

        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        //获得初始化的AlipayClient
        AlipayClient alipayClient =new DefaultAlipayClient(AlipayConfig.URL, AlipayConfig.APPID, AlipayConfig.RSA_PRIVATE_KEY, AlipayConfig.FORMAT, AlipayConfig.CHARSET, AlipayConfig.ALIPAY_PUBLIC_KEY,AlipayConfig.SIGNTYPE);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"),"UTF-8");
        //付款金额，必填
        String total_amount = new String(request.getParameter("WIDtotal_amount").getBytes("ISO-8859-1"),"UTF-8");
        //订单名称，必填
        String subject = new String(request.getParameter("WIDsubject").getBytes("ISO-8859-1"),"UTF-8");
        //商品描述，可空
        String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"),"UTF-8");

        System.out.println("alipayRequest.getReturnUrl()="+alipayRequest.getReturnUrl());
        System.out.println("alipayRequest.getNotifyUrl()="+alipayRequest.getNotifyUrl());
        alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
                + "\"total_amount\":\""+ total_amount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        //请求
        String result = null;
        try {
            result = alipayClient.pageExecute(alipayRequest).getBody();
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
        System.out.println(result);
        PrintWriter out=response.getWriter();
        out.println(result);
        out.flush();
    }

}
