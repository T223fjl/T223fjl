package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.Role;
import pojo.User;
import service.UserS;
import util.Config;

@Controller
public class UserController {
	@Autowired
	private UserS userService;
	//登录
	@RequestMapping("/login.html")
	public String login(String userCode,String userPassword,HttpSession session,Model model){
		User use=new User();
		use.setUserCode(userCode);
		use.setUserPassword(userPassword);
		User loginUser=userService.login(use);
		
		if(loginUser!=null){
			session.setAttribute("loginUser", loginUser);
			return userList(null,null,null, model);
		}else{
			return "login";
		}
	}
	
	//用户查询
	@RequestMapping("/userQuery")
	public String userList(String pageIndex,String queryUserRole,String queryname,Model model){
		int currentPageNo=1;
		if(pageIndex!=null&&!"".equals(pageIndex)){
			currentPageNo=Integer.valueOf(pageIndex);
		}
		int queryUserRole0=0;
		if(queryUserRole!=null&&!"".equals(queryUserRole)){
			queryUserRole0=Integer.valueOf(queryUserRole);
		}
		List<User> userlist=userService.queryByNameRole(queryname,queryUserRole0,(currentPageNo-1)*Config.pageSize,Config.pageSize);
		int totalCount=userService.queryByNameRoleCount(queryname, queryUserRole0);
		List<Role> roleList=userService.queryRole();
		int totalPageCount=totalCount%Config.pageSize==0?totalCount/Config.pageSize:totalCount/Config.pageSize+1;
		model.addAttribute("userList", userlist);
		model.addAttribute("roleList", roleList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("totalPageCount", totalPageCount);
		model.addAttribute("currentPageNo", currentPageNo);
		model.addAttribute("queryUserName", queryname);
		model.addAttribute("queryUserRole", queryUserRole);
		return "userlist";
	}
	//跳转到新增页面
	@RequestMapping("/userAdd.html")
	public String useradd(Model model){
		List<Role> roleList=userService.queryRole();
		model.addAttribute("roleList", roleList);
		return "useradd";
	}
	//添加
	@RequestMapping("/userAdd")
	public String userAdd(String userCode,String userName,String userPassword,String gender
			,String birthday,String phone,String address,String userRole,Model model){
		User user=new User();
		user.setUserCode(userCode);
		user.setUserName(userName);
		user.setUserPassword(userPassword);
		user.setGender(Integer.valueOf(gender));
		user.setBirthday(Date.valueOf(birthday));
		user.setPhone(phone);
		user.setAddress(address);
		user.setUserRole(Integer.valueOf(userRole));
		int result=userService.add(user);
		if(result>0){
			return userList(null, null, null, model);
		}else{
			return useradd(model);
		}
	}
	
	//修改
	@RequestMapping("/ModifyUser")
	public String modifyUser(String uid,String userName,String gender
			,String birthday,String phone,String address,String queryUserRole,Model model){
//		User loginUser=(User)request.getSession().getAttribute("LoginUser");
//		int loginUserId=loginUser.getId();
		User u=userService.queryById(Integer.valueOf(uid));
		u.setUserName(userName);
		u.setGender(Integer.valueOf(gender));
		u.setBirthday(Date.valueOf(birthday));
		u.setPhone(phone);
		u.setAddress(address);
		u.setUserRole(Integer.valueOf(queryUserRole));
		u.setModifyBy(1);
		int result=userService.modify(u);
		if(result>0){
			return userList(null, null, null, model);
		}else{
			return "modifyUser";
		}
	}
	//查询单个用户信息
	@RequestMapping("/userview")
	public String userQuery(String uid,Model model){
		User user=userService.queryById(Integer.valueOf(uid));
		SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd");
		String date=f.format(user.getBirthday());
		user.setBirthday(Date.valueOf(date));
		model.addAttribute("user", user);
		return "userview";
	}
	//修改查询
	@RequestMapping("/modifyUser")
	public String modifyUser(String uid,Model model){
		User user=userService.queryById(Integer.valueOf(uid));
		SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd");
		String date=f.format(user.getBirthday());
		user.setBirthday(Date.valueOf(date));
		List<Role> roleList=userService.queryRole();
		model.addAttribute("roleList", roleList);
		model.addAttribute("user", user);
		return "usermodify";
	}
	//删除
	@RequestMapping("/delelteUser")
	public String delelteUser(Model model,HttpServletRequest request,HttpServletResponse response) throws IOException{
		String uid=request.getParameter("uid");
		int result=userService.delete(Integer.valueOf(uid));
		PrintWriter out=response.getWriter();
		out.print(result);
		out.flush();
		out.close();
		return userList(null, null, null, model);
	}
	
}
