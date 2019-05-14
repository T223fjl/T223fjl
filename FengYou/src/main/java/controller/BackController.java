package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String backLogin(String name,String pwd,Model model){
		System.out.println(name+"  "+pwd);
		return "backend/index";
	}
}
