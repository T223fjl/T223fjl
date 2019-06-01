package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Mycollection;
import pojo.User;
import service.UserService;
import util.AliyunSMS;
import util.ConvertJSONUtil;

@Controller
public class LoginRegController {
	@Autowired
	private UserService userService;

	@RequestMapping("/mtest")
	public @ResponseBody Map ff() {
		Map<String, String> m = new HashMap<String, String>();
		m.put("mm", "10");
		m.put("mm0", "100");
		return m;
	}

	// 前台登录
	@RequestMapping("/dologin")
	public String login(@RequestParam(required = false) String name, @RequestParam(required = false) String pwd,
			HttpSession session,HttpServletResponse response) {
		User user = new User();
		user.setName(name);
		user.setPwd(pwd);
		User dUser = userService.login(user);
		if (dUser != null) {
			List<Mycollection> collections = userService.queryMycollection();
			session.setAttribute("collections", collections);
			session.setAttribute("loginUser", dUser);
			session.removeAttribute("error");
			return "redirect:/toIndex";
		} else {
			try {
				PrintWriter out=response.getWriter();
				session.setAttribute("error", "用户名或密码不正确");
				out.print("<script type='text/javascript'>location='http://localhost:8080/FengYou/login.jsp'</script>");
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
return null;
	}

	
	/**
	 * 手机获取验证码
	 * 
	 * @param mobileNo
	 *  
	 */
	@RequestMapping("/find_Code")
	public void find_Code(String mobileNo, HttpServletResponse response, HttpSession session,
			HttpServletRequest request) {
		System.out.println("手机:"+mobileNo);
		System.out.println("进入手机获取验证码");
		String code = AliyunSMS.Sms(mobileNo);
		System.out.println("code" + code);
		request.getSession().setAttribute("code", code);
	}
	
	/**
	 * 异步查询手机是否存在
	 * @param phone
	 * @param session
	 * @param response
	 */
	@RequestMapping("/sale.json")
	public void registerByPhone(String phone, HttpSession session,HttpServletResponse response){
		System.out.println("phone"+phone);
		PrintWriter out;
		try {
			out = response.getWriter();
		User user =userService.registerByPhone(phone);
		boolean ajax=false;
		if(user!=null){
				ajax=true;
			}else{
				ajax=false;
			}
			out.print(ajax);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 前台注册
	 * 
	 * @param user
	 * @param captcha
	 * @param response
	 */
	@RequestMapping("/register")
	public void register(String userName,String password,String phone,String email, String captcha,String ValidateCode,String inputCode, HttpServletResponse response, HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println("进入....");
		System.out.println("captcha=="+captcha);
		System.out.println("ValidateCode=="+ValidateCode);
		System.out.println("inputCode=="+inputCode);
		System.out.println("userName=="+userName);
		System.out.println("password=="+password);
		System.out.println("phone=="+phone);
		System.out.println("email=="+email);
		
		//验证码是否和输入框相等
		if(!ValidateCode.equals(inputCode)){
			ConvertJSONUtil.toText("existence", response);
			return;
		}
		//手机验证码是否和输入框相等
		String code=(String)session.getAttribute("code");
		Integer sMs = Integer.valueOf(code);
		System.out.println("session里面的验证码" + sMs);
		if (!captcha.equals(sMs.toString())) {
			ConvertJSONUtil.toText("error", response);
		}else{
			User user=new User();
			user.setSex(1);
			user.setStatus(2);
			user.setPhone(phone);
			user.setName(userName);
			user.setEmail(email);
			user.setPwd(password);
			user.setBirthday(new Date());
			int result = userService.Registration(user);
			System.out.println("result="+result);
			if (result > 0) {
				session.setAttribute("user", user);
				ConvertJSONUtil.toText("success", response);
			}else{
				ConvertJSONUtil.toText("failure", response);
			}	
		}
	}
	
//	// 前台注册
//	@RequestMapping("/registration")
//	public void Registration(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// int userId = Integer.parseInt(request.getParameter("id"));
//		String phone = request.getParameter("phone");
//		String name = request.getParameter("name");
//		String email = request.getParameter("email");
//		String pwd = request.getParameter("pwd");
//		User user = new User();
//		user.setPhone(phone);
//		user.setName(name);
//		user.setEmail(email);
//		user.setPwd(pwd);
//		System.out.println("name:" + user.getName());
//		int s = userService.Registration(user);
//		if (s > 0) {
//			response.sendRedirect("/FengYou/login.jsp");
//		}
//	}

	// 用户注销
	@RequestMapping(value = "/logout")
	public void logout(HttpSession session, HttpServletResponse response) {
		session.removeAttribute("loginUser");
		try {
			response.sendRedirect("/FengYou/login.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
