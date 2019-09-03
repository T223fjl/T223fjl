package controller.backend;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;

import pojo.Chart;
import pojo.Dictionarydate;
import pojo.Hotel;
import pojo.Hotel_news;
import pojo.House;
import pojo.Level;
import pojo.Order;
import pojo.Rawstock;
import pojo.User;
import service.backend.BackendDictionarydateService;
import service.backend.BackendHotelService;
import service.backend.BackendHouseService;
import service.backend.BackendLevelService;
import service.backend.BackendNewsService;
import service.backend.BackendOrderService;
import service.backend.BackendRawstockService;
import service.backend.BackendUserService;
import util.HotelUtil;

@Controller
public class BackController {

	@Autowired
	private BackendUserService backendUserService;

	@Autowired
	private BackendHotelService backendHotelService;

	@Autowired
	private BackendLevelService backendlevelService;

	@Autowired
	private BackendDictionarydateService backDictionarydateService;

	@Autowired
	private BackendNewsService newsService;

	@Autowired
	private BackendHouseService backendHouseService;

	@Autowired
	private BackendOrderService backendOrderService;
	
	@Autowired
	private  BackendRawstockService  rawstockService;
	// charts_5
	@RequestMapping("/toCharts_5")
	public String toCharts_5(Model model) throws Exception {
		return "backend/charts-5";
	}

	// charts_1
	@RequestMapping("/toCharts_1")
	public String toCharts_1(Model model) throws Exception {
		return "backend/charts-1";
	}

	// charts_1
	@RequestMapping("/toCharts_4")
	public String toCharts_4(Model model) throws Exception {
		return "backend/charts-4";
	}

	// charts_5
	@RequestMapping("/charts_5")
	@ResponseBody
	public List<HotelUtil> charts_5(Model model) throws Exception {
		List<HotelUtil> ul = backendOrderService.getlistHotelUtil();
		return ul;
	}

	// charts_1
	@RequestMapping("/charts_1")
	@ResponseBody
	public List<HotelUtil> charts_1(Model model) throws Exception {
		List<Hotel> hlist = backendHotelService.gethotel(null, null);
		List<HotelUtil> ul = new ArrayList<HotelUtil>();
		for (int i = 0; i < hlist.size(); i++) {
			HotelUtil hotelUtil = new HotelUtil();
			hotelUtil.setName(hlist.get(i).getHotelName());
			int[] orderCounts = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
			List<Chart> clist = backendOrderService.getlistByidDate(hlist.get(i).getHotelId());
			for (int j = 0; j < clist.size(); j++) {
				if (!"".equals(clist.get(j).getOrderCount()))
					orderCounts[clist.get(j).getMonth()] = clist.get(j).getOrderCount();
			}
			hotelUtil.setData(orderCounts);
			ul.add(hotelUtil);
		}
		return ul;
	}

	// 查询酒店
	@RequestMapping("/queryhotel")
	public String queryhotel(Model model, @RequestParam(value = "hotelName", required = false) String hotelName,
			@RequestParam(value = "hotelphone", required = false) Integer hotelphone,
			@RequestParam(value = "sort", required = false) String sort,
			@RequestParam(value = "desc", required = false) String desc,
			@RequestParam(value = "currentPageNo", required = false) String currentPageNo) throws Exception {

		if (sort == null || "".equals(sort)) {
			sort = "hotelId";
		}
		if (desc == null || "".equals(desc)) {
			desc = "desc";
		}
		int currentPageNo1 = 1;
		if (currentPageNo != null && !"".equals(currentPageNo)) {
			currentPageNo1 = Integer.valueOf(currentPageNo);
		}
		int count = backendHotelService.getCount(hotelName, hotelphone);

		System.out.println("count=" + count);

		// List<Hotel> hotel = hotelService.findHotelList(hotelName, hotelphone,
		// sort, desc, currentPageNo1, 2).getList();
		model.addAttribute("hotelName", hotelName);
		model.addAttribute("hotelphone", hotelphone);
		// model.addAttribute("hotel", hotel);
		model.addAttribute("count", count);
		model.addAttribute("curPage", currentPageNo1);
		return "backend/hotel-list";
	}

	@RequestMapping("/query")
	public String query(Model model, @RequestParam(value = "hotelName", required = false) String hotelName,
			@RequestParam(value = "hotelphone", required = false) Integer hotelphone) throws Exception {
		List<Hotel> hotel = backendHotelService.gethotel(hotelName, hotelphone);
		int count = backendHotelService.getCount(hotelName, hotelphone);

		model.addAttribute("count", count);
		model.addAttribute("hotel", hotel);
		model.addAttribute("hotelName", hotelName);
		model.addAttribute("hotelphone", hotelphone);
		return "backend/picture-list";
	}

	// 根据id查询酒店信息
	@RequestMapping("/queryHotelById")
	public String queryHotelById(@RequestParam(value = "id", required = false) String id, Model model) {
		System.out.println("id=" + id);
		Hotel hotel = backendHotelService.gethotelByid(Integer.valueOf(id));
		model.addAttribute(hotel);
		return "backend/hotel-view";
	}

	@RequestMapping(value = "Savehotel", method = RequestMethod.POST)
	public String addSave(HttpSession session, HttpServletRequest request, @RequestParam MultipartFile[] myfiles,
			@RequestParam(value = "productNo", required = false) String productNo,
			@RequestParam(value = "hotelName", required = false) String hotelName,
			@RequestParam(value = "hotelRating", required = false) String hotelRating,
			@RequestParam(value = "level3", required = false) String level3,
			@RequestParam(value = "level1", required = false) String level1,
			@RequestParam(value = "level2", required = false) String level2,
			@RequestParam(value = "hotelPrice", required = false) Double hotelPrice,
			@RequestParam(value = "hotelAddress", required = false) String hotelAddress,
			@RequestParam(value = "hotelRatings", required = false) Double hotelRatings,
			@RequestParam(value = "test", required = false) String[] test,
			@RequestParam(value = "hotelIntro", required = false) String hotelIntro,
			@RequestParam(value = "hotelphone", required = false) String hotelphone) throws Exception {
		List<String> fileUrsl = new ArrayList<String>();

		String tests = org.apache.commons.lang3.StringUtils.join(test, ",");

		Hotel hotel = new Hotel();
		String logoPicPath = "C:/Users/Administrator/Desktop/FengYou10/FengYou/src/main/webapp/uploadFile";
		System.out.println("上传的路径>" + logoPicPath);
		String fileurl = "";
		for (MultipartFile multipartFile : myfiles) {
			String prefix = FilenameUtils.getExtension(multipartFile.getOriginalFilename());// 源文件后缀
			System.out.println("prefix==" + prefix);

			if (prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") || prefix.equalsIgnoreCase("gif")
					|| prefix.equalsIgnoreCase("pneg")) {// 上传图片格式
				FileUtils.copyInputStreamToFile(multipartFile.getInputStream(),
						new File(logoPicPath, multipartFile.getOriginalFilename()));
				fileUrsl.add(multipartFile.getOriginalFilename());
				fileurl = "/uploadFile/" + multipartFile.getOriginalFilename();
				System.out.println("上传成功");
			} else {
				System.out.println("文件类型错误，请上传图片！");

				return "rediect:/addhotel";
			}

		}
		hotel.setProductNo(productNo);
		hotel.setHotelName(hotelName);
		hotel.setHotelRating(hotelRating);
		hotel.setHotelAddress(hotelAddress);
		hotel.setHotelIntro(hotelIntro);
		hotel.setHotelphone(hotelphone);
		hotel.setHotelPrice(hotelPrice);
		hotel.setHotelRatings(hotelRatings);
		hotel.setHotelServe(tests);
		hotel.setFileUrl(fileurl);
		hotel.setLevel1(Integer.valueOf(level1));
		hotel.setLevel2(Integer.valueOf(level2));
		/*
		 * if(level2.equals("")) { System.out.println(1111);
		 * hotel.setLevel2(null); }else {
		 * hotel.setLevel2(Integer.valueOf(level2)); }
		 */

		if (level3.equals("")) {
			hotel.setLevel3(0);
		} else {
			hotel.setLevel3(Integer.valueOf(level3));
		}
		if (backendHotelService.addhotel(hotel) > 0) {
			return "redirect:/query";
		}

		return "backend/hotel-add";
	}

	@RequestMapping("/addhotel")
	public String getAppInfoList(HttpSession session, Model model, HttpServletRequest request, String parentId)
			throws Exception {
		List<Level> level1List = null;
		List<Level> level2List = null;
		List<Level> level3List = null;
		level1List = backendlevelService.queryLevelByPid(0);
		level2List = backendlevelService.queryLevelByPid(0);
		level3List = backendlevelService.queryLevelByPid(0);

		List<Dictionarydate> dictionarydates = backDictionarydateService.getTypeCode("star");
		model.addAttribute("dictionarydates", dictionarydates);
		request.setAttribute("level1List", level1List);
		request.setAttribute("level2List", level2List);
		request.setAttribute("level3List", level3List);

		return "backend/hotel-add";

	}

	// 查询父级
	@RequestMapping(value = "/levellist", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	@ResponseBody
	public String getTypeList(String parentId) {
		if (parentId.equals("") || parentId == null) {
			return JSONArray.toJSONString(backendlevelService.queryLevelByPid(0));
		} else {
			return JSONArray.toJSONString(backendlevelService.queryLevelByPid(Integer.valueOf(parentId)));
		}
	}

	// 根据id查询酒店信息
	@RequestMapping("/updateByid")
	public String updateByid(@RequestParam(value = "id", required = false) String id, Model model,
			HttpServletRequest request) {
		Hotel hotel = backendHotelService.gethotelByid(Integer.valueOf(id));
		List<Level> level1List = null;
		List<Level> level2List = null;
		List<Level> level3List = null;
		List<Dictionarydate> dictionarydates = null;
		dictionarydates = backDictionarydateService.getTypeCode("star");
		level1List = backendlevelService.queryLevelByPid(0);
		level2List = backendlevelService.queryLevelByPid(hotel.getLevel1());

		/*
		 * System.out.println(hotel.getLevel3()); if(hotel.getLevel3()==null) {
		 * level3List =levelService.queryLevelByPid(0); }
		 */
		level3List = backendlevelService.queryLevelByPid(hotel.getLevel2());

		request.setAttribute("dictionarydates", dictionarydates);
		request.setAttribute("level1List", level1List);
		request.setAttribute("level2List", level2List);
		request.setAttribute("level3List", level3List);
		model.addAttribute(hotel);
		return "backend/hotel-update";
	}

	/**
	 * 修改用户
	 * 
	 * @param user
	 * @param model
	 * @returnZ
	 * @throws NumberFormatException
	 * @throws Exception
	 */
	@RequestMapping(value = "/modifyhotel")
	public String BackmodifyUser(Model model, @RequestParam MultipartFile[] myfiles,
			@RequestParam(value = "productNo", required = false) String productNo,
			@RequestParam(value = "hotelName", required = false) String hotelName,
			@RequestParam(value = "hotelRating", required = false) String hotelRating,
			@RequestParam(value = "level3", required = false) String level3,
			@RequestParam(value = "level1", required = false) String level1,
			@RequestParam(value = "level2", required = false) String level2,
			@RequestParam(value = "hotelPrice", required = false) Double hotelPrice,
			@RequestParam(value = "hotelAddress", required = false) String hotelAddress,
			@RequestParam(value = "hotelRatings", required = false) Double hotelRatings,
			@RequestParam(value = "hotelIntro", required = false) String hotelIntro,
			@RequestParam(value = "hotelphone", required = false) String hotelphone,
			@RequestParam(value = "hotelServe", required = false) String[] hotelServe,
			@RequestParam(value = "hotelId", required = false) String hotelId) throws NumberFormatException, Exception {
		Hotel hotel = new Hotel();
		String hotelServes = org.apache.commons.lang3.StringUtils.join(hotelServe, ",");
		List<String> fileUrsl = new ArrayList<String>();
		String logoPicPath = "C:/Users/Administrator/Desktop/FengYou10/FengYou/src/main/webapp/uploadFile";
		System.out.println("上传的路径>" + logoPicPath);
		String fileurl = "";
		for (MultipartFile multipartFile : myfiles) {
			String prefix = FilenameUtils.getExtension(multipartFile.getOriginalFilename());// 源文件后缀
			System.out.println("prefix==" + prefix);

			if (prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") || prefix.equalsIgnoreCase("gif")
					|| prefix.equalsIgnoreCase("pneg")) {// 上传图片格式
				FileUtils.copyInputStreamToFile(multipartFile.getInputStream(),
						new File(logoPicPath, multipartFile.getOriginalFilename()));
				fileUrsl.add(multipartFile.getOriginalFilename());
				fileurl = "/uploadFile/" + multipartFile.getOriginalFilename();
				System.out.println("上传成功");
			} else {
				System.out.println("文件类型错误，请上传图片！");

				return "rediect:/query";
			}

		}
		hotel.setHotelId(Integer.valueOf(hotelId));
		hotel.setProductNo(productNo);
		hotel.setHotelName(hotelName);
		hotel.setHotelRating(hotelRating);
		hotel.setHotelAddress(hotelAddress);
		hotel.setHotelIntro(hotelIntro);
		hotel.setHotelphone(hotelphone);
		hotel.setHotelPrice(hotelPrice);
		hotel.setHotelRatings(hotelRatings);
		hotel.setHotelServe(hotelServes);
		hotel.setFileUrl(fileurl);
		hotel.setLevel1(Integer.valueOf(level1));
		hotel.setLevel2(Integer.valueOf(level2));
		/*
		 * if(level2.equals("")) { System.out.println(1111);
		 * hotel.setLevel2(null); }else {
		 * hotel.setLevel2(Integer.valueOf(level2)); }
		 */

		if (level3.equals("")) {
			hotel.setLevel3(0);
		} else {
			hotel.setLevel3(Integer.valueOf(level3));
		}

		int result = backendHotelService.updateHotel(hotel);
		if (result > 0) {
			return "redirect:/query";
		}
		return "backend/hotel-update";
	}

	/**
	 * 异步批量删除
	 * 
	 * @param session
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "delhotels", method = RequestMethod.POST)
	@ResponseBody
	public String delhotels(String selectIds, HttpServletRequest request) {
		String[] ids = selectIds.split(",");
		for (String string : ids) {
			System.out.println(string);
		}
		int result = backendHotelService.delhotels(ids);
		boolean bool = false;
		if (result > 0) {
			bool = true;
		} else {
			bool = false;
		}
		return JSONArray.toJSONString(bool);
	}

	// 字典表查询
	@RequestMapping(value = "/test")
	public String queryDictionarydateByTypeCode(HttpSession session, HttpServletResponse response, String typeCode,
			String info) throws Exception {
		List<Dictionarydate> dictionarydates = backDictionarydateService.queryDictionarydate();
		List<Dictionarydate> dictionarydatesSfl = backDictionarydateService.queryDictionarydateSfl();
		int count = backDictionarydateService.getCount(typeCode, info);
		session.setAttribute("count", count);
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~`" + dictionarydates.size());
		session.setAttribute("dictionarydates", dictionarydates);
		session.setAttribute("dictionarydatesSfl", dictionarydatesSfl);

		return "backend/system-list";
	}

	// 字典表条件查询
	@RequestMapping(value = "/ByCody")
	public String queryDictionarydateByCody(HttpSession session, HttpServletResponse response, String typeCode,
			String info) {
		List<Dictionarydate> dictionarydates = backDictionarydateService.queryDictionarydateByCody(typeCode, info);
		List<Dictionarydate> dictionarydatesSfl = backDictionarydateService.queryDictionarydateSfl();
		session.setAttribute("dictionarydates", dictionarydates);
		session.setAttribute("dictionarydatesSfl", dictionarydatesSfl);

		return "backend/system-list";
	}

	// 字典删除
	@RequestMapping(value = "/deleteByid")
	public ModelAndView deleteByid(HttpServletRequest request, HttpServletResponse response, int id) {
		int sum = backDictionarydateService.deleteByid(id);
		String ss = request.getParameter("id");
		System.out.println("1232312312312~~~~" + id);
		return new ModelAndView("redirect:test");
	}

	// 跳转字典新增
	@RequestMapping(value = "/add")
	public String add(HttpServletRequest request, HttpServletResponse response) {
		List<Dictionarydate> dictionarydatesSfl = backDictionarydateService.queryDictionarydateSfl();
		request.setAttribute("dictionarydatesSfl", dictionarydatesSfl);
		return "backend/system-category-add";
	}

	// 跳转字典新增
	@RequestMapping(value = "/add2")
	public ModelAndView add2(HttpServletRequest request, HttpServletResponse response, String typeCode, String dictCode,
			String info, String typeName) {
		int sum = backDictionarydateService.add(typeCode, Integer.valueOf(dictCode), info, typeName);
		System.out.println("asdxczfd" + sum);
		return new ModelAndView("redirect:test");
	}

	// 查询用户信息
	@RequestMapping("/Userlist")
	public String userlist(Model model, @RequestParam(value = "name", required = false) String name,
			@RequestParam(value = "phone", required = false) Integer phone) throws NumberFormatException, Exception {
		List<User> user = backendUserService.getUserlist(name, phone);
		List<Dictionarydate> dictionarydates = backDictionarydateService.getTypeCode("sex");
		model.addAttribute("dictionarydates", dictionarydates);
		int count = backendUserService.getCount(name, phone);
		model.addAttribute("count", count);
		model.addAttribute("name", name);
		model.addAttribute("phone", phone);
		model.addAttribute("user", user);
		return "backend/user-list";
	}

	// 根据id查询会员信息
	@RequestMapping("userview")
	public String userview(String id, Model model) throws NumberFormatException, Exception {
		User user = backendUserService.getUserInfo(Integer.valueOf(id));
		model.addAttribute(user);
		return "backend/user-view";
	}

	// 根据id查询跳到修改页面
	@RequestMapping("dicByid")
	public String dicByid(String id, Model model) throws NumberFormatException, Exception {
		Dictionarydate dictionarydate = backDictionarydateService.getdicByid(Integer.valueOf(id));

		model.addAttribute(dictionarydate);
		return "backend/system-category-update";

	}

	// 修改字典表信息
	@RequestMapping(value = "/updatedic")
	public String updatedic(Dictionarydate dictionarydate, Model model) throws NumberFormatException, Exception {

		int result = backDictionarydateService.update(dictionarydate);
		if (result > 0) {
			return "redirect:/test";
		}
		return "backend/system-category-update";
	}

	/**
	 * 根据id查询会员信息 跳转到修改页面
	 * 
	 * @param id
	 * @param model
	 *
	 */
	@RequestMapping("userByid")
	public String userByid(String id, Model model) throws NumberFormatException, Exception {
		User user = backendUserService.getUserInfo(Integer.valueOf(id));
		model.addAttribute(user);
		return "backend/user-update";

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
	@RequestMapping(value = "/BackModifyUser")
	public String BackmodifyUser(User user, Model model) throws NumberFormatException, Exception {

		int result = backendUserService.modifyUser(user);
		if (result > 0) {
			return "redirect:/UserInfo";
		}
		return "backend/user-update";
	}

	@RequestMapping("useradd")
	public String useradd(Model model) throws NumberFormatException, Exception {
		return "backend/user-add";

	}

	/**
	 * 异步查询手机是否存在
	 * 
	 * @param phone
	 * @param session
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/sales")
	public void registerByPhone(String phone, HttpSession session, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		int result = backendUserService.registerByPhone(phone);
		PrintWriter out = response.getWriter();
		String ajax = "yes";
		if (result > 0) {
			ajax = "yes";
		} else {
			ajax = "no";
		}
		out.print(ajax);
		out.flush();
		out.close();
	}

	/**
	 * 新增用户
	 */
	@RequestMapping(value = "/addUsers")
	public String addUser(User user, Model model) throws NumberFormatException, Exception {
		System.out.println(111);
		int result = backendUserService.addUser(user);
		if (result > 0) {
			return "redirect:/UserInfo";
		}
		return "backend/user-add";
	}

	/**
	 * 查询密码
	 */
	@RequestMapping("/BackUserPwd")
	public String BackUserPwd(String id, Model model) throws NumberFormatException, Exception {
		User user = backendUserService.getUserInfo(Integer.valueOf(id));
		model.addAttribute(user);
		return "backend/user-password-edit";
	}

	/**
	 * 修改密码
	 */
	@RequestMapping(value = "/BackmodifyPwd")
	public String BackmodifyPwd(User user, Model model) throws NumberFormatException, Exception {
		int result = backendUserService.updatePwd(user);
		if (result > 0) {
			return "redirect:/logouts";
		}
		return "backend/user-password-edit";
	}

	/**
	 * 删除用户信息
	 */
	@RequestMapping("/deleteUser")
	public void deleteUser(String id, Model model, HttpServletResponse response)
			throws NumberFormatException, Exception {
		PrintWriter out = response.getWriter();
		int result = 0;
		result = backendUserService.delete(Integer.valueOf(id));
		String ajax = "no";
		if (result > 0) {
			ajax = "yes";
		}
		out.print(ajax);
		out.flush();
		out.close();
	}

	/**
	 * 角色查询
	 */
	@RequestMapping("/Usertype")
	public String usertype(Model model, @RequestParam(value = "name", required = false) String name,
			@RequestParam(value = "phone", required = false) Integer phone) throws NumberFormatException, Exception {

		List<Dictionarydate> dictionarydates = backDictionarydateService.getTypeCode("status");
		int count = backDictionarydateService.getTypeCode("status").size();
		model.addAttribute("count", count);
		model.addAttribute("dictionarydates", dictionarydates);
		return "backend/user-type";
	}

	/**
	 * 查询资讯列表
	 */
	@RequestMapping("/UserNews")
	public String UserNews(Model model, @RequestParam(value = "title", required = false) String title)
			throws NumberFormatException, Exception {
		List<Hotel_news> hotel_news = newsService.getUserNews(title);
		int count = newsService.getUserNews(title).size();
		model.addAttribute("count", count);
		model.addAttribute("hotel_news", hotel_news);
		return "backend/user-news";
	}


	// 折线图
	@RequestMapping("/orderlist")
	@ResponseBody
	public List orderlist(HttpServletResponse response) throws NumberFormatException, Exception {
		List<Order> list = backendOrderService.getlist();
		PrintWriter out = response.getWriter();
		out.print(JSONArray.toJSONString(list));
		String json = JSONArray.toJSONString(list);
		return list;
	}

	// 订单查询
	@RequestMapping(value = "/orderquery")
	public String queryDictionarydateByTypeCode(HttpSession session, HttpServletResponse response) {
		List<Order> orders = backendOrderService.query();
		System.out.println("123123123~~~~~~~~~~" + orders.size());
		session.setAttribute("orders", orders);
		return "backend/order-list";
	}

	// 订单条件查询
	/*
	 * @RequestMapping(value="/ByCody") public String
	 * queryDictionarydate(HttpSession session, HttpServletResponse
	 * response,@DateTimeFormat(pattern="yyyy-MM-dd")Date
	 * checkInDate,@DateTimeFormat(pattern="yyyy-MM-dd")Date checkOutDate,String
	 * sum) { System.out.println("jinjijijijijijijijiji");
	 * System.out.println("tour:"+sum);
	 * if(sum.matches("[0-9]{1,}")&&checkInDate!=null&&checkOutDate!=null){
	 * System.out.println("数字？"); List<Order>
	 * orders=orderService.queryByx2(checkInDate, checkOutDate,sum);
	 * session.setAttribute("orders", orders); }else
	 * if(sum.length()>0&&checkInDate!=null&&checkOutDate!=null){
	 * System.out.println("字符？"); List<Order>
	 * orders=orderService.queryByx3(checkInDate, checkOutDate,sum);
	 * System.out.println("~"+orders.size()); session.setAttribute("orders",
	 * orders); }else
	 * if(sum.matches("[0-9]{1,}")&&checkInDate==null&&checkOutDate==null){
	 * System.out.println("数字？"); List<Order>
	 * orders=orderService.queryByx5(checkInDate, checkOutDate,sum);
	 * session.setAttribute("orders", orders); }else
	 * if(sum.length()>0&&checkInDate==null&&checkOutDate==null){
	 * System.out.println("数字？"); List<Order>
	 * orders=orderService.queryByx4(checkInDate, checkOutDate,sum);
	 * session.setAttribute("orders", orders); }else{ List<Order>
	 * orders=orderService.queryByx(checkInDate, checkOutDate,sum);
	 * System.out.println("~"+orders.size()); session.setAttribute("orders",
	 * orders); }
	 * 
	 * return "backend/order-list"; }
	 */

	// 删除订单信息
	@RequestMapping(value = "/deleteorder")
	public void deleteorder(String id, Model model, HttpServletResponse response)
			throws NumberFormatException, Exception {
		PrintWriter out = response.getWriter();
		int result = 0;
		result = backendOrderService.deleteByid(Integer.valueOf(id));
		String ajax = "no";
		if (result > 0) {
			ajax = "yes";
		}
		out.print(ajax);
		out.flush();
		out.close();
	}

	/**
	 * 查询房型列表
	 */
	@RequestMapping("/houselist")
	public String houselist1(Model model, @RequestParam(value = "title", required = false) String title)
			throws NumberFormatException, Exception {

		List<House> house = backendHouseService.queryhouse();
		int count = backendHouseService.queryhouse().size();
		model.addAttribute("count", count);
		model.addAttribute("house", house);
		return "backend/house-list";
	}
	
	
	// 跳转到房型新增页面
		@RequestMapping(value = "/addhouse")
		public String addhouse(HttpServletRequest request, HttpServletResponse response,String hotelId,Model model,HttpSession session) {
		/*
		 * House house=backendHouseService.gethouseByid(Integer.valueOf(hotelId));
		 * session.setAttribute("house", house);
		 */
		session.setAttribute("hotelId", hotelId);
		return "backend/house-add";
		}
		

		//新增房型表
		@RequestMapping(value = "Updatehouse", method = RequestMethod.POST)
		public String Updatehouse(HttpSession session, HttpServletRequest request,
				@RequestParam MultipartFile[] myfiles,
				@RequestParam(value = "houseType", required = false) String houseType,
				@RequestParam(value = "housePrice", required = false) Double housePrice,
				@RequestParam(value = "houseId", required = false) String houseId,
				@RequestParam(value = "isHavingBreakfast", required = false) String isHavingBreakfast,
				@RequestParam(value = "contentOne", required = false) String contentOne,
				@RequestParam(value = "contentTow", required = false) String[] contentTow,
				@RequestParam(value = "contentThree", required = false) String contentThree,
				@RequestParam(value = "contentFour", required = false) String contentFour,
				@RequestParam(value = "contentFive", required = false) String contentFive,
				@RequestParam(value = "store", required = false) String store,
				@RequestParam(value = "createBy", required = false) String createBy) throws Exception {
			List<String> fileUrsl = new ArrayList<String>();
			for (int i = 0; i < myfiles.length; i++) {
				String fileName=System.currentTimeMillis()+myfiles[i].getOriginalFilename();
				System.out.println("fileName="+fileName);
				String destFileName=request.getServletContext().getRealPath("")+"uploadFile/house"+File.separator+fileName;
				System.out.println("destFileName="+destFileName);
				
				File destFile=new File(destFileName);
				destFile.getParentFile().mkdirs();
				myfiles[i].transferTo(destFile);
			}
			String contentTows=org.apache.commons.lang3.StringUtils.join(contentTow,",");
			House house=new House();
			if(houseType.equals("")) {
				house.setHouseType(null);
			}
			if(contentOne.equals("")) {
				house.setContentOne(null);
			}
			/*
			 * if(contentTows.equals("")) { house.setContentTow(null); }
			 */
			if(contentThree.equals("")) {
				house.setContentThree(null);
			}
			if(contentFour.equals("")) {
				house.setContentFour(null);
			}
			if(contentFive.equals("")) {
				house.setContentFive(null);
			}
		   house.setHouseId(Integer.valueOf(houseId));
			house.setHouseType(houseType);
			house.setHousePrice(housePrice);
			house.setIsHavingBreakfast(Integer.valueOf(isHavingBreakfast));
			house.setContentOne(contentOne);
			house.setContentTow(contentTows);
			house.setContentThree(contentThree);
			house.setContentFour(contentFour);
			house.setContentFive(contentFive);
			
		    Rawstock rawstock=new Rawstock();
		    rawstock.setHouseId(Integer.valueOf(houseId));
		    rawstock.setHouseId(house.getHouseId());
		    rawstock.setStore(Integer.valueOf(store));

		    rawstock.getHotelId();
		  int result=rawstockService.updateraw(rawstock);
		 
			if (backendHouseService.updatehouse(house) > 0) {
				return "redirect:/houselist";
			}
			return "backend/house-add";
		}

		
		

		//新增房型表
		@RequestMapping(value = "Savehouse", method = RequestMethod.POST)
		public String addhouse(HttpSession session, HttpServletRequest request,
				@RequestParam MultipartFile[] myfiles,
				@RequestParam(value = "houseType", required = false) String houseType,
				@RequestParam(value = "houseId", required = false) String houseId,
				@RequestParam(value = "hotelId", required = false) String hotelId,
				@RequestParam(value = "housePrice", required = false) Double housePrice,
				@RequestParam(value = "isHavingBreakfast", required = false) String isHavingBreakfast,
				@RequestParam(value = "contentOne", required = false) String contentOne,
				@RequestParam(value = "contentTow", required = false) String[] contentTow,
				@RequestParam(value = "contentThree", required = false) String contentThree,
				@RequestParam(value = "contentFour", required = false) String contentFour,
				@RequestParam(value = "contentFive", required = false) String contentFive,
				@RequestParam(value = "store", required = false) String store,
				@RequestParam(value = "createBy", required = false) String createBy) throws Exception {
			List<String> fileUrsl = new ArrayList<String>();
			String logoPicPath = "D:/Program Files (x86)/git/FengYou/src/main/webapp/uploadFile/house";
			System.out.println("上传的路径>" + logoPicPath);
			String fileurl = "";
			for (MultipartFile multipartFile : myfiles) {
				String prefix = FilenameUtils.getExtension(multipartFile.getOriginalFilename());// 源文件后缀
				System.out.println("prefix==" + prefix);

				if (prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") || prefix.equalsIgnoreCase("gif")
						|| prefix.equalsIgnoreCase("pneg")) {// 上传图片格式
					FileUtils.copyInputStreamToFile(multipartFile.getInputStream(),
							new File(logoPicPath, multipartFile.getOriginalFilename()));
					fileUrsl.add(multipartFile.getOriginalFilename());
					fileurl = "/uploadFile/" + multipartFile.getOriginalFilename();
					System.out.println("上传成功");
				} else {
					System.out.println("文件类型错误，请上传图片！");

					return "rediect:/query";
				}

			}
			String contentTows=org.apache.commons.lang3.StringUtils.join(contentTow,",");
			House house=new House();
			if(houseType.equals("")) {
				house.setHouseType(null);
			}
			if(contentOne.equals("")) {
				house.setContentOne(null);
			}
			/*
			 * if(contentTows.equals("")) { house.setContentTow(null); }
			 */
			if(contentThree.equals("")) {
				house.setContentThree(null);
			}
			if(contentFour.equals("")) {
				house.setContentFour(null);
			}
			if(contentFive.equals("")) {
				house.setContentFive(null);
			}
			/*
			 * if(productName.equals("")) { house.setProductName(productName); }
			 * if(productPolicy.equals("")) { house.setProductPolicy(productPolicy); }
			 * if(bedType.equals("")) { house.setBedType(bedType); }
			 */
		
			house.setHotelId(Integer.valueOf(hotelId));;
			house.setHouseType(houseType);
			house.setHousePrice(housePrice);
			house.setIsHavingBreakfast(Integer.valueOf(isHavingBreakfast));
			house.setContentOne(contentOne);
			house.setContentTow(contentTows);
			house.setContentThree(contentThree);
			house.setContentFour(contentFour);
			house.setContentFive(contentFive);
		    house.setCreateBy(createBy);
			int res=backendHouseService.addorder(house);
		House h=	backendHouseService.getHouseNew();
			
		    Rawstock rawstock=new Rawstock();
		    rawstock.setHotelId(Integer.valueOf(hotelId) );
		    rawstock.setHouseId(h.getHouseId());
		    System.out.println("house.getHouseId()="+h.getHouseId());
		    rawstock.setStore(Integer.valueOf(store));

		  rawstockService.addawstock(rawstock);
		 
			if (res > 0) {
				return "redirect:/houselist";
			}
			return "backend/house-add";
		}
		//根据id查询跳到修改房间
		@RequestMapping(value = "/houseById")
		public String houseById(HttpSession session, HttpServletResponse response,String id) {
			System.out.println("id="+id);
				House house=backendHouseService.gethouseByID(Integer.valueOf(id));
				Rawstock rawstock=rawstockService.getlist(Integer.valueOf(id));
			session.setAttribute("house", house);
			System.out.println("rawstock="+rawstock);
			session.setAttribute("rawstock", rawstock);
			return "backend/house-update";
		}
		//查看房间
		@RequestMapping(value = "/houseshow")
		public String houseshow(HttpSession session, HttpServletResponse response,String id) {
			System.out.println("id="+id);
				House house=backendHouseService.gethouseByID(Integer.valueOf(id));
				Rawstock rawstock=rawstockService.getlist(Integer.valueOf(id));
			session.setAttribute("house", house);
			
			session.setAttribute("rawstock", rawstock);
			return "backend/house-view";
		}
}
