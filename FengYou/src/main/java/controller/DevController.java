package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pojo.Dictionarydate;
import pojo.Hotel;
import pojo.Level;
import pojo.User;
import service.DictionarydateService;
import service.HotelService;
import service.LevelService;
import service.UserService;

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
		session.setAttribute("levels", levels);
		return "developer/index";
	}

	// 跳转前台二级页面
	@RequestMapping("/toIndex2")
	public String toIndex2(HttpSession session) {
		List<Level> types =levelService.queryLevelByType(1);
		List<Level> citys = levelService.queryLevelByType(2);
		List<Hotel> hotels=hotelService.queryHotel();
		List<Dictionarydate> stars=dictionarydateService.queryDictionarydateByTypeCode("star");
		List<Dictionarydate> prices=dictionarydateService.queryDictionarydateByTypeCode("price");
		
		session.setAttribute("stars", stars);
		session.setAttribute("prices", prices);
		session.setAttribute("types", types);
		session.setAttribute("citys", citys);
		session.setAttribute("hotels", hotels);
		return "developer/index2";
	}

	// 跳转前台三级页面
	@RequestMapping("/toIndex3")
	public String toIndex3(Model model) {
		return "developer/index3";
	}

	// 跳转前台订单页面
	@RequestMapping("/toDingDan")
	public String toDingDan(Model model) {
		return "developer/dingdan";
	}

	// 跳转前台订单页面
	@RequestMapping("/toHuiyuan")
	public String toHuiyuan(Model model) {
		return "developer/huiyuan";
	}
	//查询会员信息
		@RequestMapping("/UserInfo")
		public String view( String id,Model model) throws NumberFormatException, Exception{
		User user = userService.getUserInfo(Integer.valueOf(id));
		System.out.println("id="+id+"电话"+user.getPhone());
			model.addAttribute(user);
			return "developer/userlist";
		}
		
	/**
	 * 修改用户
	 * @param user
	 * @param model
	 * @return
	 * @throws NumberFormatException
	 * @throws Exception
	 */
	@RequestMapping(value="/modifyUser")
	public String modifyUser(User user,Model model) throws NumberFormatException, Exception{
		
            int result=userService.updateUser(user);
			if(result>0){
				return "developer/userlist";
			}
		return "developer/userlist";
	}
}
