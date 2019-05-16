package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pojo.User;
import service.UserService;

@Controller
public class LoginRegController {
	@Autowired
	private UserService userService;

	// 前台登录
	@RequestMapping("/dologin")
	public String login(@RequestParam(required = false) String name, @RequestParam(required = false) String pwd,
			HttpSession session) {
		User user = new User();
		user.setName(name);
		user.setPwd(pwd);
		User dUser = userService.login(user);
		System.out.println(name);
		System.out.println(pwd);
		System.out.println(dUser);
		if (dUser != null) {
			session.setAttribute("loginUser", dUser);
			session.removeAttribute("error");
			return "redirect:/NewFile";
		} else {
			session.setAttribute("error", "用户名或密码不正确");
			return "login";
		}

	}

	// 跳转后台登陆页面
	@RequestMapping("/backToLogin")
	public String toLogin(Model model) {
		return "backend/login";
	}
	// 后台登陆
	@RequestMapping("/backLogin")
	public String backLogin(String name, String pwd, Model model, HttpSession session) {
		System.out.println(name + "  " + pwd);
		User user = new User();
		user.setName(name);
		user.setPwd(pwd);
		User dUser = userService.login(user);
		System.out.println(name);
		System.out.println(pwd);
		System.out.println(dUser);
		if (dUser != null) {
			session.setAttribute("loginUser", dUser);
			session.removeAttribute("error");
			return "backend/index";
		} else {
			session.setAttribute("error", "用户名或密码不正确");
			return "403";
		}
	}
	
	@RequestMapping("/Registration")
	public int Registration(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//int userId = Integer.parseInt(request.getParameter("id"));  
		String phone=request.getParameter("phone");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		User user=new User();
		user.setPhone(phone);
		user.setName(name);
		user.setEmail(email);
		user.setPwd(pwd);
		System.out.println("name:"+user.getName());
		int s=userService.Registration(user);
		request.getRequestDispatcher("/login.jsp").forward(request, response);
		return s;
	}
}
