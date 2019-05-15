package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pojo.Level;
import pojo.User;
import service.LevelService;
import service.UserService;

@Controller
public class DevLoginController {

	@Autowired
	private UserService userService;
	@Autowired
	private LevelService levelService;


	@RequestMapping("/dologin")
	public String login(@RequestParam(required = false) String name,
			@RequestParam(required = false) String pwd, HttpSession session) {
		User user=new User();
		user.setName(name);
		user.setPwd(pwd);
		User dUser = userService.login(user);
		System.out.println(name);
		System.out.println(pwd);
		System.out.println(dUser);
		if (dUser != null) {
			System.err.println(111111);
			
			session.setAttribute("loginUser", dUser);
			session.removeAttribute("error");
			return "403";
		} else {
			session.setAttribute("error", "用户名或密码不正确");
			return "login";
		}

	}
	
	// 跳转前台一级页面
		@RequestMapping("/NewFile")
		public String NewFile(HttpSession session) {
			List<Level> levels=levelService.queryLevel();
			session.setAttribute("levels", levels);
			return "developer/NewFile";
		}
	
	// 跳转前台一级页面
		@RequestMapping("/toIndex")
		public String toIndex(Model model) {
			return "developer/index";
		}
	
	// 跳转前台二级页面
	@RequestMapping("/toIndex2")
	public String toIndex2(HttpSession session) {
		List<String> prices=new ArrayList<String>();
		List<String> stars=new ArrayList<String>();
		prices.add("10-30");
		stars.add("一星");
		session.setAttribute("stars", stars);
		session.setAttribute("prices", prices);
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
}
