package controller.developer;

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
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Hotel;
import pojo.Order;
import pojo.Realtimeinventory;
import pojo.User;
import service.developer.DeveloperHotelService;
import service.developer.DeveloperOrderService;
import service.developer.DeveloperRealtimeinventoryService;

@Controller
public class AjaxController {
	@Autowired
	private DeveloperOrderService DeveloperOrderService;
	@Autowired
	private DeveloperRealtimeinventoryService realtimeinventoryService;
	@Autowired
	private DeveloperHotelService DeveloperhotelService;

	// addNote
	@RequestMapping("/addNote")
	@ResponseBody
	public List<Hotel> addNote(String hotelId, String curPage, HttpServletResponse response, HttpServletRequest request)
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
		if (r == 0 && hotelId != null && !"null".equals(hotelId)) {
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
						if (retval.trim() != null && !"".equals(retval.trim())) {
							int id = Integer.valueOf(retval.trim());
							list.add(DeveloperhotelService.getHotelById(id));
						}
					}
					cook.setMaxAge(1000 * 60);
				} else {
					if (r == 0 && hotelId != null && !"null".equals(hotelId)) {
						list.add(DeveloperhotelService.getHotelById(Integer.valueOf(hotelId)));
					}
				}
			}
		}
		int pageSize = 3;
		int page = 1;
		if (curPage != null && !"".equals(curPage)) {
			page = Integer.valueOf(curPage);
		}

		int sum = list.size();
		int count = sum % pageSize == 0 ? sum / pageSize : sum / pageSize + 1;
		List<Hotel> hotellist = new ArrayList<Hotel>();
		for (int i = (page - 1) * pageSize; i < (page - 1) * pageSize + pageSize; i++) {
			if (i < sum) {
				hotellist.add(list.get(i));
			}
		}
		HttpSession session= request.getSession();
		session.setAttribute("coun", count);
		System.out.println(hotellist.size());
		return hotellist;
	}

	@RequestMapping("/TimeOut")
	@ResponseBody
	public Map f(String orderId, HttpServletResponse response, HttpServletRequest request)
			throws IOException, ParseException {
		Map<String, String> map = new HashMap<String, String>();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (orderId != null && !"".equals(orderId)) {
			Order o = DeveloperOrderService.getOrderNew();
			o.setOrderStatus(2);
			if (o.getOrderStatus() == 0) {
				int r = DeveloperOrderService.updOrder(o);
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
