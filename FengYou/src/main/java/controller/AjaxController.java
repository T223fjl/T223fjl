package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Hotel;
import pojo.Order;
import pojo.Realtimeinventory;
import pojo.User;
import service.HotelService;
import service.OrderService;
import service.RealtimeinventoryService;

@Controller
public class AjaxController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private RealtimeinventoryService realtimeinventoryService;
	@Autowired
	private HotelService hotelService;

	// addNote
	@RequestMapping("/addNote")
	@ResponseBody
	public List<Hotel> addNote(String hotelId, HttpServletResponse response, HttpServletRequest request)
			throws IOException, ParseException {
		List<Hotel> list = new ArrayList<Hotel>();

		int userId = 20;
		User u = (User) request.getSession().getAttribute("loginUser");
		if (u != null) {
			userId = u.getId();
		}
		Cookie[] cookie = request.getCookies();
		String hlistCooks = "";
		int r = 0;
		if (cookie != null) {
			for (int i = 0; i < cookie.length; i++) {
				Cookie cook = cookie[i];
				if (cook.getName().equals(String.valueOf(userId))) { // 获取键
					for (String retval : cook.getValue().toString().split(",")) {
						hlistCooks += retval.trim() + ",";
						if (retval.trim().equals(hotelId)) {
							r = 1;
						}
					}
				}
			}
		}
		if (r == 0 && hotelId != null&&!"null".equals(hotelId)) {
			hlistCooks += hotelId + ",";
		}
		Cookie coo = new Cookie(String.valueOf(userId), hlistCooks);
		response.addCookie(coo);
		
		cookie = request.getCookies();
		
		if (cookie != null) {
			for (int i = 0; i < cookie.length; i++) {
				Cookie cook = cookie[i];
				if (cook.getName().equals(String.valueOf(userId))) { // 获取键
					System.out.println(cook.getValue().toString());
					for (String retval : cook.getValue().toString().split(",")) {
						if (retval.trim() != null&&!"".equals(retval.trim())) {
							int id = Integer.valueOf(retval.trim());
							list.add(hotelService.getHotelById(id));
						}
					}
					cook.setMaxAge(1000*60);
				}else{
					if (r == 0&& hotelId != null&&!"null".equals(hotelId)) {
						list.add(hotelService.getHotelById(Integer.valueOf(hotelId)));
					}
				}
			}
		}
		System.out.println(list.size());
		return list;
	}

	@RequestMapping("/TimeOut")
	@ResponseBody
	public Map f(String orderId, HttpServletResponse response, HttpServletRequest request)
			throws IOException, ParseException {
		Map<String, String> map = new HashMap<String, String>();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (orderId != null && !"".equals(orderId)) {
			Order o = orderService.getOrderNew();
			o.setOrderStatus(2);
			if (o.getOrderStatus() == 0) {
				int r = orderService.updOrder(o);
				map.put("succes", "yes");
			} else if (o.getOrderStatus() == 1) {
				map.put("succes", "no0");
			}
			if (o.getOrderStatus() == 3) {
				map.put("succes", "no1");
			}

			Realtimeinventory real = new Realtimeinventory();
			real.setHotelId(o.getHotelId());
			real.setHouseId(o.getHouseId());
			real.setRecordStopDate(format.parse(format.format(new java.util.Date())));
			Realtimeinventory re = realtimeinventoryService.queryRealtimeinventoryByHHid(real);
			if (re != null) {
				real.setStore(re.getStore() + o.getHouseCount());
				realtimeinventoryService.updRealtimeinventory(re);
			}

		}
		return map;
	}
}
