package controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageInfo;

import pojo.Dictionarydate;
import pojo.Hotel;
import pojo.House;
import pojo.Itrip;
import pojo.Level;
import pojo.Order;
import pojo.Realtimeinventory;
import pojo.User;
import service.DictionarydateService;
import service.HotelService;
import service.HouseService;
import service.LevelService;
import service.OrderService;
import service.RealtimeinventoryService;
import service.UserService;
import util.ConvertJSONUtil;

@Controller
public class DevController {

	@Autowired
	private UserService userService;
	@Autowired
	private LevelService levelService;
	@Autowired
	private HotelService hotelService;
	@Autowired
	private DictionarydateService dictionarydateService;
	@Autowired
	private HouseService houseService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private RealtimeinventoryService realtimeinventoryService;
	
	// 跳转前台订单查询页面
	@RequestMapping("/toOrder")
	public String order(String houseId,String checkInDate,String checkOutDate, String day, Model model) {
		int hid=1;
		if(houseId!=null&&!"".equals(houseId)){
			hid=Integer.valueOf(houseId);
		}
		House h=null;
		House house=houseService.qeuryHouseByHouseId(hid);
		Hotel hotel =hotelService.getHotelById(house.getHotelId());
		if(checkInDate!=null&&checkOutDate!=null){
			List<Order> olist=orderService.queryOrderByHouseId(hid);
			if(olist!=null&&olist.size()!=0){
				Order order=new Order();
				order.setCheckInDate(java.sql.Date.valueOf(checkInDate));
				order.setCheckOutDate(java.sql.Date.valueOf(checkOutDate));
				order.setHouseId(hid);
				olist=orderService.queryOrderByDate(order);
				
				for (int i = 0; i < olist.size(); i++) {
					if(olist.get(i).getHouseCount()>0){
						h=new House();
					}
				}
				if(h==null){
					return "redirect:/toIndex3?hotelId="+hotel.getHotelId();
				}
			}
			
		}
		Realtimeinventory real=new Realtimeinventory();
		real.setHotelId(hid);
		real.setHouseId(hotel.getHotelId());
		real=realtimeinventoryService.queryRealtimeinventoryByHHid(real);
		model.addAttribute("real", real);
		model.addAttribute("checkInDate", checkInDate);
		model.addAttribute("checkOutDate", checkOutDate);
		model.addAttribute("house", house);
		model.addAttribute("hotel", hotel);
		model.addAttribute("day", day);
		return "developer/order";
	}

	
	
	// 跳转前台一级页面
	@RequestMapping("/toFF")
	public String test(HttpSession session) {

		return "developer/ff";
	}

	// 跳转前台三级页面
	@RequestMapping("/toIndex3")
	public String toIndex3(String hotelId, Model model) {
		int hid = 1;
		if (hotelId != null && !"".equals(hotelId)) {
			hid = (Integer.valueOf(hotelId));
		}
		Hotel hotel = hotelService.getHotelById(hid);
		List<House> houseList = houseService.qeuryHouseByHotelId(hid);

		model.addAttribute("houseList", houseList);
		model.addAttribute("hotel", hotel);
		return "developer/index3";
	}

	// 跳转前台一级页面
	@RequestMapping("/NewFile")
	public String NewFile(HttpSession session) {
		List<Level> levels = levelService.queryLevel();
		session.setAttribute("levels", levels);
		return "developer/NewFile";
	}

	// 跳转前台一级页面
	@RequestMapping("/toIndex")
	public String toIndex(HttpSession session) {
		List<Level> levels = levelService.queryLevel();
		List<Level> level = levelService.queryByName();
		// List<Hotel> hotel=null;
		// for (int i = 0; i < level.size(); i++) {
		// hotel=levelService.query(level.get(i).getName());
		// }
		List<Hotel> hotel = levelService.query(level.get(0).getName());
		List<Hotel> hote2 = levelService.query(level.get(1).getName());
		List<Hotel> hote3 = levelService.query(level.get(2).getName());
		List<Hotel> hote4 = levelService.query(level.get(3).getName());
		List<Hotel> hote5 = levelService.query(level.get(4).getName());
		List<Hotel> hote6 = levelService.query(level.get(5).getName());
		// System.out.println(hotel.get(0).getFileUrl());
		session.setAttribute("levels", levels);
		session.setAttribute("level", level);
		session.setAttribute("hotel", hotel);
		session.setAttribute("hote2", hote2);
		session.setAttribute("hote3", hote3);
		session.setAttribute("hote4", hote4);
		session.setAttribute("hote5", hote5);
		session.setAttribute("hote6", hote6);
		return "developer/index";
	}

	// 跳转前台二级页面
	@RequestMapping("/toIndex2")
	public String toIndex2(String bigPrice, String smallPrice, String city, String star, String type, String price,
			String curPage, String sort, String desc, HttpSession session) {
		List<Level> types = levelService.queryLevelByType(1);
		List<Level> citys = levelService.queryLevelByType(2);
		List<Dictionarydate> stars = dictionarydateService.queryDictionarydateByTypeCode("star");
		List<Dictionarydate> prices = dictionarydateService.queryDictionarydateByTypeCode("price");
		int page = 1;
		int size = 5;
		System.out.println("ddddddd:" + sort);

		if (sort == null || "".equals(sort)) {
			sort = "hotelId";
		}
		if (desc == null || "".equals(desc)) {
			desc = "asc";
		}
		if (curPage != null && !"".equals(curPage)) {
			page = (Integer.valueOf(curPage));
		}
		int level2 = 0;
		if (city != null && !"".equals(city)) {
			level2 = (Integer.valueOf(city));
		}
		int level1 = 0;
		if (type != null && !"".equals(type)) {
			level1 = (Integer.valueOf(type));
		}
		int xin = 0;
		if (star != null && !"".equals(star)) {
			xin = Integer.valueOf(star);
		}
		int small = 0;
		if (smallPrice != null && !"".equals(smallPrice)) {
			small = (Integer.valueOf(smallPrice));
		}
		int big = 0;
		if (bigPrice != null && !"".equals(bigPrice)) {
			big = (Integer.valueOf(bigPrice));
		}
		int sum = 0;
		PageInfo<Hotel> hotels = null;
		hotels = hotelService.findHotelList(xin, level1, level2, big, small, sort, desc, page, size);
		sum = hotelService.queryHotel(xin, level1, level2, big, small, sort, desc).size();
		int count = sum % size == 0 ? sum / size : sum / size + 1;
		session.setAttribute("sort", sort);
		session.setAttribute("desc", desc);
		session.setAttribute("curPage", page);
		session.setAttribute("sum", sum);
		session.setAttribute("count", count);
		session.setAttribute("stars", stars);
		session.setAttribute("prices", prices);
		session.setAttribute("types", types);
		session.setAttribute("citys", citys);
		session.setAttribute("hotels", hotels);

		Dictionarydate CurStar = null;
		for (int i = 0; i < stars.size(); i++) {
			if (stars.get(i).getDictCode() == xin) {
				CurStar = stars.get(i);
			}
		}
		Dictionarydate CurPrice = null;
		for (int i = 0; i < prices.size(); i++) {
			if (price != null && !"".equals(price)) {
				if (prices.get(i).getDictCode() == (Integer.valueOf(price))) {
					CurPrice = prices.get(i);
				}
			}
		}
		if ("0".equals(price)) {
			CurPrice = new Dictionarydate();
			CurPrice.setInfo(smallPrice + "-" + bigPrice);
		}
		Level CurCity = null;
		for (int i = 0; i < citys.size(); i++) {
			if (citys.get(i).getId() == level2) {
				CurCity = citys.get(i);
			}
		}
		Level CurType = null;
		for (int i = 0; i < types.size(); i++) {
			if (types.get(i).getId() == level1) {
				CurType = types.get(i);
			}
		}
		session.setAttribute("CurStar", CurStar);
		session.setAttribute("CurPrice", CurPrice);
		session.setAttribute("CurType", CurType);
		session.setAttribute("CurCity", CurCity);
		return "developer/index2";
	}

	// 跳转前台二级页面
	@RequestMapping("/toIndexTwo")
	public String toIndexTwo(String keywords, String destination, String curPage, String sort, String desc,
			HttpSession session) {
		List<Level> types = levelService.queryLevelByType(1);
		List<Level> citys = levelService.queryLevelByType(2);
		List<Dictionarydate> stars = dictionarydateService.queryDictionarydateByTypeCode("star");
		List<Dictionarydate> prices = dictionarydateService.queryDictionarydateByTypeCode("price");
		int page = 1;
		int size = 5;
		if (sort == null || "".equals(sort)) {
			sort = "hotelId";
		}
		if (desc == null || "".equals(desc)) {
			desc = "asc";
		}
		if (curPage != null && !"".equals(curPage)) {
			page = (Integer.valueOf(curPage));
		}
		Level CurCity = null;
		int des = 0;
		if (destination != null && !"".equals(destination)) {
			for (int i = 0; i < citys.size(); i++) {
				if (destination.equals(citys.get(i).getName())) {
					des = citys.get(i).getId();
					CurCity = citys.get(i);
				}
			}
		}
		int sum = 0;
		PageInfo<Hotel> hotels = null;
		hotels = hotelService.findHotelListByName(keywords, des, sort, desc, page, size);
		sum = hotelService.queryHotelByName(keywords, des).size();
		int count = sum % size == 0 ? sum / size : sum / size + 1;

		session.setAttribute("CurCity", CurCity);
		session.setAttribute("sort", sort);
		session.setAttribute("desc", desc);
		session.setAttribute("curPage", page);
		session.setAttribute("sum", sum);
		session.setAttribute("count", count);
		session.setAttribute("stars", stars);
		session.setAttribute("prices", prices);
		session.setAttribute("types", types);
		session.setAttribute("citys", citys);
		session.setAttribute("hotels", hotels);

		return "developer/index2";
	}

	// 跳转前台订单页面
	@RequestMapping("/toDingDan")
	public String toDingDan(Model model) {
		return "developer/dingdan";
	}

	// 跳转前台订单查询页面
	@RequestMapping("/toHuiyuan")
	public String toHuiyuan(Model model) {
		return "developer/huiyuan";
	}

	// 查询会员信息
	@RequestMapping("/UserInfo")
	public String view(String id, Model model) throws NumberFormatException, Exception {
		User user = userService.getUserInfo(Integer.valueOf(id));
		System.out.println("id=" + id + "电话" + user.getPhone());
		List<Itrip> trip = userService.queryBytrip(Integer.valueOf(id));
		model.addAttribute("trip", trip);
		model.addAttribute(user);
		return "developer/userlist";
	}

	/**
	 * 修改用户
	 * 
	 * @param user
	 * @param model
	 * @return
	 * @throws NumberFormatException
	 * @throws Exception
	 */
	@RequestMapping(value = "/modifyUser")
	public String modifyUser(User user, Model model) throws NumberFormatException, Exception {

		int result = userService.updateUser(user);
		if (result > 0) {
			return "developer/userlist";
		}
		return "developer/userlist";
	}

	/**
	 * 查询密码
	 */
	@RequestMapping("/UserPwd")
	public String viewPwd(String id, Model model) throws NumberFormatException, Exception {
		User user = userService.getUserInfo(Integer.valueOf(id));
		model.addAttribute(user);
		return "developer/userPwd";
	}

	/**
	 * 修改密码
	 */
	@RequestMapping("/modifyPwd")
	public void modifyPwd(String id, String oldpassword, String password, String ValidateCode, String inputCode,
			HttpServletResponse response, HttpServletRequest request) throws NumberFormatException, Exception {
		System.out.println("进入修改密码....");
		System.out.println("id==" + id);
		System.out.println("ValidateCode==" + ValidateCode);
		System.out.println("inputCode==" + inputCode);
		System.out.println("password==" + password);
		// 验证码是否和输入框相等
		if (!ValidateCode.equals(inputCode)) {
			ConvertJSONUtil.toText("existence", response);
		} else {
			User user = new User();
			user.setId(Integer.valueOf(id));
			user.setPwd(password);
			int result = userService.updatePwd(user);
			System.out.println("result=" + result);
			if (result > 0) {
				ConvertJSONUtil.toText("success", response);
			} else {
				ConvertJSONUtil.toText("failure", response);
			}
		}
	}

	/**
	 * 删除旅客信息
	 */
	@RequestMapping("/delete")
	public void delete(String id, Model model, HttpServletResponse response) throws NumberFormatException, Exception {
		PrintWriter out = response.getWriter();
		int result = 0;
		result = userService.delete(Integer.valueOf(id));
		String ajax = "no";
		if (result > 0) {
			ajax = "yes";
		}
		out.print(ajax);
		out.flush();
		out.close();
	}

}
