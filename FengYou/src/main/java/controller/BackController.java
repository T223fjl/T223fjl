package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.User;
import service.UserService;

@Controller
public class BackController {
	@Autowired
	private UserService userService;
	//跳转后台登陆页面
	@RequestMapping("/backToLogin")
    public String toLogin(Model model){
		return "backend/login";
	}
	
	@RequestMapping("/backLogin")
	public String backLogin(String name,String pwd,Model model,HttpSession session){
		System.out.println(name+"  "+pwd);
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
			return "backend/index";
		} else {
			session.setAttribute("error", "用户名或密码不正确");
			return "403";
		}
	}
}
