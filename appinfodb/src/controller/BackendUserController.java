package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import pojo.AppCategory;
import pojo.AppInfo;
import pojo.AppVersion;
import pojo.BackendUser;
import pojo.DataDictionary;
import pojo.Pager;
import service.AppCategoryService;
import service.AppInfoService;
import service.AppVersionService;
import service.BackendUserService;
import service.DataDictionaryService;

@Controller
@RequestMapping("/manager")
public class BackendUserController {
	@Autowired
	private BackendUserService backendUserService;
	@Autowired
	private DataDictionaryService dataDictionaryService;
	@Autowired
	private AppCategoryService appCategoryService;
	@Autowired
	private AppInfoService appinfoService;
	
	@Autowired
	private AppVersionService appVersionService;
	
	//backend/app/checksave
	@RequestMapping("/backend/app/checksave")
	public String checksave(String id,String status,Model model,HttpSession session) {
		int result=appinfoService.checkAppInfo(Integer.valueOf(id), Integer.valueOf(status));
		if(result>0){
			return applist(null, null, null, null, null, null, model, session);
		}
		
		return "backend/applist";
	}
	
	//backend/app/check?aid=48&vid=0
	@RequestMapping("/backend/app/check")
	public String check(String aid,String vid,Model model) {
		AppInfo appinfo=appinfoService.queryByAidVid(Integer.valueOf(aid), Integer.valueOf(vid));
		AppVersion appVersion=appVersionService.queryById(Integer.valueOf(vid));
		model.addAttribute("appInfo", appinfo);
		model.addAttribute("appVersion", appVersion);
		return "backend/appcheck";
	}
	
	@RequestMapping("/backend/app/categorylevellist.json")
	public @ResponseBody List<AppCategory> QueryInfo(String pid,Model model){
		System.out.println(pid);
		List<AppCategory> list=appCategoryService.queryAppCategory(Integer.valueOf(pid));
		return list;
	}
	//backend/app/list
	@RequestMapping("/backend/app/list")
	public String applist(String querySoftwareName,String queryFlatformId,
			String queryCategoryLevel2,String queryCategoryLevel3,
			String queryCategoryLevel1,String pageIndex,
			Model model,HttpSession session) {
		List<Integer> list=new ArrayList<Integer>();
		List<DataDictionary> flatFormList=dataDictionaryService.flatFormList();
		List<AppCategory> categoryLevel1List=appCategoryService.queryAppCategory1();
		for (int i = 0; i < categoryLevel1List.size(); i++) {
			list.add(categoryLevel1List.get(i).getId());
		}
		List<AppCategory> categoryLevel2List=appCategoryService.queryAppCategoryByPid(list);
		list.clear();
		for (int i = 0; i < categoryLevel2List.size(); i++) {
			list.add(categoryLevel2List.get(i).getId());
		}
		List<AppCategory> categoryLevel3List=appCategoryService.queryAppCategoryByPid(list);
		int from=1;
		if(pageIndex!=null&&!"".equals(pageIndex)){
			from=Integer.valueOf(pageIndex);
		}
		int flatformId=0;
		if(queryFlatformId!=null&&!"".equals(queryFlatformId)){
			flatformId=Integer.valueOf(queryFlatformId);
		}
		int categoryLevel1=0;
		if(queryCategoryLevel1!=null&&!"".equals(queryCategoryLevel1)){
			categoryLevel1=Integer.valueOf(queryCategoryLevel1);
		}
		int categoryLevel2=0;
		if(queryCategoryLevel2!=null&&!"".equals(queryCategoryLevel2)){
			categoryLevel2=Integer.valueOf(queryCategoryLevel2);
		}
		int categoryLevel3=0;
		if(queryCategoryLevel3!=null&&!"".equals(queryCategoryLevel3)){
			categoryLevel3=Integer.valueOf(queryCategoryLevel3);
		}
		int rowCount=appinfoService.queryCount(1,querySoftwareName, flatformId, categoryLevel1, categoryLevel2, categoryLevel3);
		//Pager p=new Pager(rowCount, 5, from);
		List<AppInfo> appInfoList=appinfoService.query(1,querySoftwareName, flatformId, categoryLevel1, categoryLevel2, categoryLevel3, (from-1)*5, 5);
		//List<AppInfo> appInfoList0=new ArrayList<AppInfo>();
		//List<DataDictionary> dataDictionaryList=dataDictionaryService.query();
		System.out.println(flatformId);
		Pager p=new Pager(rowCount, 5, from);
		model.addAttribute("pages", p);
		
		model.addAttribute("queryFlatformId", queryFlatformId);
		model.addAttribute("queryCategoryLevel2", queryCategoryLevel2);
		model.addAttribute("queryCategoryLevel1", queryCategoryLevel1);
		model.addAttribute("queryCategoryLevel3", queryCategoryLevel3);
		model.addAttribute("appInfoList", appInfoList);
		model.addAttribute("flatFormList", flatFormList);
		model.addAttribute("categoryLevel1List", categoryLevel1List);
		model.addAttribute("categoryLevel2List", categoryLevel2List);
		model.addAttribute("categoryLevel3List", categoryLevel3List);
		return "backend/applist";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.setAttribute("userSession", null);
		return "backendlogin";
	}
	
	@RequestMapping("/checkCode")
	public String checkCode(String userCode,HttpServletRequest request) {
		if(backendUserService.check_backUserByCode(userCode)<=0){
			request.setAttribute("error", "用户名错误");
		}else{
			request.setAttribute("error", "");
		}
		request.setAttribute("userCode", userCode);
		return "backendlogin";
	}
	
	
	@RequestMapping("/login")
	public String login(Model model) {
		List<DataDictionary> flatFormList=dataDictionaryService.query();
		model.addAttribute("appInfoList", flatFormList);
		return "backendlogin";
	}

	@RequestMapping("/dologin")
	public String dologin(String userCode, String userPassword, Model model, HttpServletRequest request,
			HttpSession session) {
		BackendUser backendUser = new BackendUser();
		backendUser.setUserCode(userCode);
		backendUser.setUserPassword(userPassword);
		
		if(backendUserService.check_backUserByCode(userCode)<=0){
			request.setAttribute("error", "用户名错误");
			return "backendlogin";
		}else{
			BackendUser backendUserLogin = backendUserService.Login_backend_User(backendUser);
			if (backendUserLogin != null) {
				session.setAttribute("userSession", backendUserLogin);
				request.setAttribute("error", "");
				return "backend/main";
			} else {
				request.setAttribute("error", "密码错误");
				return "backendlogin";
			}
		}
		

	}

	@RequestMapping("/main")
	public String main(Model model) {
		return "backend/main";
	}

	@RequestMapping("/backend/app/403")
	public String main403(Model model) {
		return "403";
	}

}
