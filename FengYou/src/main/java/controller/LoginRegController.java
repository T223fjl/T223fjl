package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pojo.Mycollection;
import pojo.User;
import service.backend.BackendUserService;
import service.developer.DeveloperUserService;
import util.AliyunSMS;
import util.ConvertJSONUtil;

@Controller
public class LoginRegController {

	@Autowired
	private DeveloperUserService developeruserService;

	@Autowired
	private BackendUserService backendUserService;

	// 后台登录
	@RequestMapping("/backLogin")
	public String backlogin(@RequestParam(required = false) String name, @RequestParam(required = false) String pwd,
			HttpSession session) {
		User user = new User();
		user.setName(name);
		user.setPwd(pwd);
		User dUser = backendUserService.backLogin(user);
		System.out.println(dUser);
		if (dUser != null) {
			session.setAttribute("loginUser", dUser);
			session.removeAttribute("error");
			return "backend/index";
		} else {
			session.setAttribute("error", "用户名或密码不正确");
			return "redirect:/logouts";
		}

	}

	// 后台用户注销
	@RequestMapping(value = "/logouts")
	public void backendlogout(HttpSession session, HttpServletResponse response) {
		session.removeAttribute("loginUser");
		try {
			response.sendRedirect("/FengYou/Backendlogin.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 前台登录
	@RequestMapping("/dologin")
	public String developerlogin(@RequestParam(required = false) String name,
			@RequestParam(required = false) String pwd, HttpSession session, HttpServletResponse response) {

		User user = new User();
		user.setName(name);
		user.setPwd(pwd);
		User dUser = developeruserService.login(user);
		if (dUser != null) {
			List<Mycollection> collections = developeruserService.queryMycollection();
			session.setAttribute("collections", collections);
			session.setAttribute("loginUser", dUser);
			session.removeAttribute("error");
			return "redirect:/toIndex";
		} else {
			try {
				PrintWriter out = response.getWriter();
				session.setAttribute("error", "用户名或密码不正确");
				out.print(
						"<script type='text/javascript'>location='http://localhost:8080/FengYou/Developerlogin.jsp'</script>");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	// 手机获取验证码
	@RequestMapping("/find_Code")
	public void find_Code(String mobileNo, HttpServletResponse response, HttpSession session,
			HttpServletRequest request) {
		System.out.println("手机:" + mobileNo);
		System.out.println("进入手机获取验证码");
		PrintWriter out;
		try {
			out = response.getWriter();
			String code = AliyunSMS.Sms(mobileNo);
			System.out.println("code" + code);
			request.getSession().setAttribute("code", code);
			boolean ajax = true;
			out.print(ajax);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 异步查询手机是否存在
	@RequestMapping("/sale.json")
	public void registerByPhone(String phone, HttpSession session, HttpServletResponse response) {
		System.out.println("phone" + phone);
		PrintWriter out;
		try {
			out = response.getWriter();
			User user = developeruserService.registerByPhone(phone);
			boolean ajax = false;
			if (user != null) {
				ajax = true;
			} else {
				ajax = false;
			}
			out.print(ajax);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 前台注册
	@RequestMapping("/register")
	public void register(String userName, String password, String phone, String email, String captcha,
			String ValidateCode, String inputCode, HttpServletResponse response, HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println("进入....");
		System.out.println("captcha==" + captcha);
		System.out.println("ValidateCode==" + ValidateCode);
		System.out.println("inputCode==" + inputCode);
		System.out.println("userName==" + userName);
		System.out.println("password==" + password);
		System.out.println("phone==" + phone);
		System.out.println("email==" + email);

		// 验证码是否和输入框相等
		if (!ValidateCode.equals(inputCode)) {
			ConvertJSONUtil.toText("existence", response);
			return;
		}
		// 手机验证码是否和输入框相等
		String code = (String) session.getAttribute("code");
		Integer sMs = Integer.valueOf(code);
		System.out.println("session里面的验证码" + sMs);
		if (!captcha.equals(sMs.toString())) {
			ConvertJSONUtil.toText("error", response);
		} else {
			User user = new User();
			user.setSex(1);
			user.setStatus(2);
			user.setPhone(phone);
			user.setName(userName);
			user.setEmail(email);
			user.setPwd(password);
			user.setBirthday(new Date());
			int result = developeruserService.Registration(user);
			System.out.println("result=" + result);
			if (result > 0) {
				session.setAttribute("user", user);
				ConvertJSONUtil.toText("success", response);
			} else {
				ConvertJSONUtil.toText("failure", response);
			}
		}
	}

	// 登录动态验证验证码是否正确
	@RequestMapping("/blur.json")
	public String Registration(String DynamicCode, String userPhone, HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		System.out.println("DynamicCode==" + DynamicCode);
		System.out.println("userPhone==" + userPhone);
		// 手机验证码是否和输入框相等
		PrintWriter out;
		try {
			out = response.getWriter();
			String code = (String) session.getAttribute("code");
			Integer sMs = Integer.valueOf(code);
			System.out.println("session里面的验证码" + sMs);
			boolean ajax = false;
			if (DynamicCode.equals(sMs.toString())) {
				User user = developeruserService.registerByPhone(userPhone);
				List<Mycollection> collections = developeruserService.queryMycollection();
				session.setAttribute("collections", collections);
				session.setAttribute("loginUser", user);
				// return "redirect:/toIndex"C;
				ajax = true;
				// 268711
			} else {
				ajax = false;
			}
			out.print(ajax);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	// 前台用户注销
	@RequestMapping(value = "/logout")
	public void developerlogout(HttpSession session, HttpServletResponse response) {
		session.removeAttribute("loginUser");
		try {
			response.sendRedirect("/FengYou/Developerlogin.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
