package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONArray;

import pojo.AppCategory;
import pojo.AppInfo;
import pojo.AppVersion;
import pojo.BackendUser;
import pojo.DataDictionary;
import pojo.DevUser;
import pojo.Pager;
import service.AppCategoryService;
import service.AppInfoService;
import service.AppVersionService;
import service.BackendUserService;
import service.DataDictionaryService;
import service.DevUserService;
@Controller
@RequestMapping("/dev")
public class DevCategoryController {
	@Autowired
	private DevUserService devUserService;
	@Autowired
	private DataDictionaryService dataDictionaryService;
	@Autowired
	private AppCategoryService appCategoryService;
	@Autowired
	private AppInfoService appinfoService;
	
	@Autowired
	private AppVersionService appVersionService;
	
	//appversionmodify?vid=41&aid=57
	@RequestMapping(value="/flatform/app/appversionmodify")
	public String appversionmodify(String vid,String aid,Model model) {
		AppVersion appv=appVersionService.queryById(Integer.valueOf(vid));
		List<AppVersion> appVlist=appVersionService.queryByAppId(Integer.valueOf(aid));
		model.addAttribute("appVersionList", appVlist);
		model.addAttribute("appVersion", appv);
		return "developer/appversionmodify";
	}
	
	//delapp.json
	@RequestMapping(value="/flatform/app/delapp.json")
	public @ResponseBody Map<Object,Object> delapp(String id,Model model) {
		Map<Object,Object> map=new HashMap<Object,Object>();
		List<AppVersion> appv=appVersionService.queryByAppId(Integer.valueOf(id));
		int appid=Integer.valueOf(id);
		if(appv!=null){
			appVersionService.delAppVersion(appid);
		}
		
		AppInfo app=appinfoService.queryByAidVid(appid, 0);
		if(app==null){
			map.put("delResult", "notexist");
			return map;
		}
		int result=appinfoService.delAppInfo(appid);
		if(result>0){
			  map.put("delResult", "true");
				return map;
		}
		model.addAttribute("appVersionList", appv);
	 map.put("delResult", "false");
		return map;
	}
	
	//appview/id
	@RequestMapping(value="/flatform/app/appview/{id}")
	public String appview(@PathVariable String id,Model model) {
		AppInfo app=appinfoService.queryByAidVid(Integer.valueOf(id), 0);
		List<AppVersion> appv=appVersionService.queryByAppId(Integer.valueOf(id));
		model.addAttribute("appVersionList", appv);
		model.addAttribute("appInfo", app);
		return "developer/appinfoview";
	}
	
	//delfile.json
	@RequestMapping("/flatform/app/delfile.json")
	public @ResponseBody  Map<Object,Object> delfile(String id,String flag,HttpServletResponse response) throws Exception {
		int result=0;
		if("logo".equals(flag)){
			result=appinfoService.delfile(Integer.valueOf(id));
		}else if("apk".equals(flag)){
			result=appVersionService.delfile(Integer.valueOf(id));
		}
		
		Map<Object,Object> map=new HashMap<Object,Object>();
		if(result>0){
			  map.put("result", "success");
			return map;
		}else{
			  map.put("result", "failed");
		}
		return map;
	}
	
	//appinfomodifysave
	@RequestMapping("/flatform/app/appinfomodifysave")
	public String appinfomodifysave(@RequestParam MultipartFile attach, HttpServletRequest request,Model model,HttpSession session) throws IOException {
		String id=request.getParameter("id");
		String softwareName=request.getParameter("softwareName");
		String APKName=request.getParameter("APKName");
		String supportROM=request.getParameter("supportROM");
		String interfaceLanguage=request.getParameter("interfaceLanguage");
		String softwareSize=request.getParameter("softwareSize");
		String downloads=request.getParameter("downloads");
		String flatformId=request.getParameter("flatformId");
		String categoryLevel1=request.getParameter("categoryLevel1");
		String categoryLevel2=request.getParameter("categoryLevel2");
		String categoryLevel3=request.getParameter("categoryLevel3");
		String appInfo=request.getParameter("appInfo");
		AppInfo app=new AppInfo();
		app.setSoftwareName(softwareName);
		app.setSupportROM(supportROM);
		app.setInterfaceLanguage(interfaceLanguage);
		app.setSoftwareSize(Double.valueOf(softwareSize));
		app.setDownloads(Integer.valueOf(downloads));
		app.setFlatformId(Integer.valueOf(flatformId));
		app.setCategoryLevel1(Integer.valueOf(categoryLevel1));
		app.setCategoryLevel2(Integer.valueOf(categoryLevel2));
		app.setCategoryLevel3(Integer.valueOf(categoryLevel3));
		app.setAppInfo(appInfo);
		app.setId(Integer.valueOf(id));
		String realPath = request.getSession().getServletContext().getRealPath("/statics/upload");
		System.out.println("上传的路径->"+realPath);
		String logoPicPath=request.getParameter("logoPicPath");
		String logoLocPath=request.getParameter("logoLocPath");
		if(attach.getOriginalFilename()==""||attach.getOriginalFilename()==null){
			app.setLocPath(logoLocPath);
			app.setLogoPicPath(logoPicPath);
		}else{
				
				String locPath=realPath+"\\"+attach.getOriginalFilename();
				String dd=locPath.replace("\\", "/");
				app.setLocPath(dd);
				int index=dd.indexOf("wtpwebapps/");
				String picPath=dd.substring(index+10);
				app.setLogoPicPath(picPath);
				FileUtils.copyInputStreamToFile(attach.getInputStream(),new File(realPath, attach.getOriginalFilename()));
			}
			System.out.println("上传成功~~~~~~~~");
		
		int result=appinfoService.updAppInfo(app);
		if(result>0){
			return "redirect:list";
		}
		
		
		return "developer/appinfoadd";
	}
	//appinfomodify
	@RequestMapping("/flatform/app/appinfomodify")
	public String appinfomodify(String id,Model model) {
		AppInfo app=appinfoService.queryByAidVid(Integer.valueOf(id), 0);
		model.addAttribute("appInfo", app);
		return "developer/appinfomodify";
	}
	
	//sale.json
	@RequestMapping("/flatform/app/sale.json")
	public @ResponseBody  Map<Object,Object> sale(String appId,String saleSwitch,HttpServletResponse response) throws Exception {
		int result=0;
		if("open".equals(saleSwitch)){
			result=appinfoService.checkAppInfo(Integer.valueOf(appId), 4);
		}else if("close".equals(saleSwitch)){
			result=appinfoService.checkAppInfo(Integer.valueOf(appId), 5);
		}
		
		Map<Object,Object> map=new HashMap<Object,Object>();
		if(result>0){
			  map.put("errorCode", "0");
			  map.put("resultMsg", ".+");
			return map;
		}else{
			  map.put("errorCode", "0");
			  map.put("resultMsg", "failed");
		}
		return map;
	}
	
	//appinfoaddsave
	@RequestMapping("/flatform/app/appinfoaddsave")
	public String appinfoaddsave(@RequestParam MultipartFile[] a_logoPicPath, HttpServletRequest request,Model model,HttpSession session) throws IOException {
		String softwareName=request.getParameter("softwareName");
		String APKName=request.getParameter("APKName");
		String supportROM=request.getParameter("supportROM");
		String interfaceLanguage=request.getParameter("interfaceLanguage");
		String softwareSize=request.getParameter("softwareSize");
		String downloads=request.getParameter("downloads");
		String flatformId=request.getParameter("flatformId");
		String categoryLevel1=request.getParameter("categoryLevel1");
		String categoryLevel2=request.getParameter("categoryLevel2");
		String categoryLevel3=request.getParameter("categoryLevel3");
		String appInfo=request.getParameter("appInfo");
		AppInfo app=new AppInfo();
		app.setSoftwareName(softwareName);
		app.setAPKName(APKName);
		app.setSupportROM(supportROM);
		app.setInterfaceLanguage(interfaceLanguage);
		app.setSoftwareSize(Double.valueOf(softwareSize));
		app.setDownloads(Integer.valueOf(downloads));
		app.setFlatformId(Integer.valueOf(flatformId));
		app.setCategoryLevel1(Integer.valueOf(categoryLevel1));
		app.setCategoryLevel2(Integer.valueOf(categoryLevel2));
		app.setCategoryLevel3(Integer.valueOf(categoryLevel3));
		app.setAppInfo(appInfo);
		
		String realPath = request.getSession().getServletContext().getRealPath("/statics/upload");
		for (MultipartFile multipartFile : a_logoPicPath) {
			String locPath=realPath+"\\"+multipartFile.getOriginalFilename();
			String dd=locPath.replace("\\", "/");
			app.setLocPath(dd);
			int index=dd.indexOf("wtpwebapps/");
			String picPath=dd.substring(index+10);
			System.out.println("短板"+picPath);
			app.setLogoPicPath(picPath);
			FileUtils.copyInputStreamToFile(multipartFile.getInputStream(),new File(realPath, multipartFile.getOriginalFilename()));
		}
		System.out.println("上传成功~~~~~~~~");
		int result=appinfoService.addAppInfo(app);
		if(result>0){
			return "redirect:list";
		}
		
		
		return "developer/appinfoadd";
	}
	
	
	//flatform/app/appinfoadd 跳转到增加appinfo页面
	@RequestMapping("/flatform/app/appinfoadd")
	public String appinfoadd(String id,Model model) {
	
		return "developer/appinfoadd";
	}
	//appversionmodifysave 修改版本
	@RequestMapping("/flatform/app/appversionmodifysave")
	public String appversionmodifysave(@RequestParam MultipartFile attach , HttpServletRequest request,Model model,HttpSession session) throws IOException {
		String appId=request.getParameter("id");
		String versionSize=request.getParameter("versionSize");
		String versionInfo=request.getParameter("versionInfo");
		
		AppVersion appver=new AppVersion();
		appver.setId(Integer.valueOf(appId));
		appver.setVersionSize(Double.valueOf(versionSize));
		appver.setVersionInfo(versionInfo);
		String downloadLink=request.getParameter("downloadLink");
		String apkLocPath=request.getParameter("apkLocPath");
		String apkFileName=request.getParameter("apkFileName");
		System.out.println(downloadLink);
		if(attach.getOriginalFilename()!=""&&attach.getOriginalFilename()!=null){
			String realPath = request.getSession().getServletContext().getRealPath("/statics/upload");
			System.out.println(realPath);
			appver.setApkLocPath(realPath);
				String locPath=realPath+"\\"+attach.getOriginalFilename();
				String dd=locPath.replace("\\", "/");
				int index=dd.indexOf("wtpwebapps/");
				String picPath=dd.substring(index+10);
				appver.setDownloadLink(picPath);
				appver.setApkLocPath(realPath+attach.getOriginalFilename());
				appver.setApkFileName(attach.getOriginalFilename());
				FileUtils.copyInputStreamToFile(attach.getInputStream(),new File(realPath, attach.getOriginalFilename()));
			System.out.println("上传成功~~~~~~~~");
		}else{
			appver.setDownloadLink(downloadLink);
			appver.setApkLocPath(apkLocPath);
			appver.setApkFileName(apkFileName);
		}
		
		int result=appVersionService.updAppVersion(appver);
		if(result>0){
			return "redirect:list";
		}
		return "developer/appversionmodify";
	}
	
	//flatform/app/addversionsave 添加版本
	@RequestMapping("/flatform/app/addversionsave")
	public String addversionsave(@RequestParam MultipartFile[] a_downloadLink , HttpServletRequest request,Model model,HttpSession session) throws IOException {
		String appId=request.getParameter("appId");
		String versionNo=request.getParameter("versionNo");
		String versionSize=request.getParameter("versionSize");
		String versionInfo=request.getParameter("versionInfo");
		
		AppVersion appver=new AppVersion();
		appver.setAppId(Integer.valueOf(appId));
		appver.setVersionNo(versionNo);
		appver.setVersionSize(Double.valueOf(versionSize));
		appver.setVersionInfo(versionInfo);
		String realPath = request.getSession().getServletContext().getRealPath("/statics/upload");
		appver.setApkLocPath(realPath);
		for (MultipartFile multipartFile : a_downloadLink) {
			String locPath=realPath+"\\"+multipartFile.getOriginalFilename();
			String dd=locPath.replace("\\", "/");
			int index=dd.indexOf("wtpwebapps/");
			String picPath=dd.substring(index+10);
			appver.setDownloadLink(picPath);
			appver.setApkLocPath(realPath+multipartFile.getOriginalFilename());
			appver.setApkFileName(multipartFile.getOriginalFilename());
			FileUtils.copyInputStreamToFile(multipartFile.getInputStream(),new File(realPath, multipartFile.getOriginalFilename()));
		}
		System.out.println("上传成功~~~~~~~~");
		int result=appVersionService.addAppVersion(appver);
		AppVersion app=appVersionService.queryNew();
		appinfoService.addVerOfApp(Integer.valueOf(appId), app.getId());
		if(result>0){
			return "redirect:list";
		}
		return "developer/appversionadd";
	}
	
	
	//flatform/app/appversionadd?id=53 跳转到增加版本页面
	@RequestMapping("/flatform/app/appversionadd")
	public String appversionadd(String id,Model model) {
		List<AppVersion> app=appVersionService.queryByAppId(Integer.valueOf(id));
		model.addAttribute("appVersionList", app);
		model.addAttribute("id", id);
		return "developer/appversionadd";
	}
	
	//apkexist.json ajax验证
	@RequestMapping("/flatform/app/apkexist.json")
	public @ResponseBody Map<Object,Object> apkexist(String APKName,Model model) throws IOException{
		AppInfo app=appinfoService.queryByName(APKName);
		Map<Object,Object> map=new HashMap<Object,Object>();
		if("".equals(APKName)||APKName==null){
			map.put("apkname", "empty");
		}else if(app!=null){
			map.put("apkname", "exist");
		}else{
			map.put("apkname", "noexist");
		}
		return map;
	}
	
	//datadictionarylist.json
	@RequestMapping("/flatform/app/datadictionarylist.json")
	public @ResponseBody List<DataDictionary> datadictionarylist(String tcode,Model model){
		List<DataDictionary> flatFormList=dataDictionaryService.flatFormList();
		if("APP_FLATFORM".equals(tcode)){
			return flatFormList;
		}
		return null;
	}
	@RequestMapping("/flatform/app/categorylevellist.json")
	public @ResponseBody List<AppCategory> QueryInfo(String pid,Model model){
		List<AppCategory> list=null;
		List<AppCategory> categoryLevel1List=null;
		if(pid!=null&&!"".equals(pid)){
			list=appCategoryService.queryAppCategory(Integer.valueOf(pid));
			return list;
		}else{
			categoryLevel1List=appCategoryService.queryAppCategory1();
			return categoryLevel1List;
		}
		
	}
	
	//flatform/app/list 查询所有appinfo
	@RequestMapping("/flatform/app/list")
	public String applist(String queryStatus,String querySoftwareName,String queryFlatformId,
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
		int status=0;
		if(queryStatus!=null&&!"".equals(queryStatus)){
			status=Integer.valueOf(queryStatus);
		}
		int rowCount=appinfoService.queryCount(status,querySoftwareName, flatformId, categoryLevel1, categoryLevel2, categoryLevel3);
		List<AppInfo> appInfoList=appinfoService.query(status,querySoftwareName, flatformId, categoryLevel1, categoryLevel2, categoryLevel3, (from-1)*5, 5);
		Pager p=new Pager(rowCount, 5, from);
		model.addAttribute("pages", p);
		List<DataDictionary> statusList=dataDictionaryService.statusList();
		
		model.addAttribute("statusList", statusList);
		model.addAttribute("queryFlatformId", queryFlatformId);
		model.addAttribute("queryCategoryLevel2", queryCategoryLevel2);
		model.addAttribute("queryCategoryLevel1", queryCategoryLevel1);
		model.addAttribute("queryCategoryLevel3", queryCategoryLevel3);
		model.addAttribute("appInfoList", appInfoList);
		model.addAttribute("flatFormList", flatFormList);
		model.addAttribute("categoryLevel1List", categoryLevel1List);
		model.addAttribute("categoryLevel2List", categoryLevel2List);
		model.addAttribute("categoryLevel3List", categoryLevel3List);
		return "developer/appinfolist";
	}
	

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.setAttribute("devUserSession", null);
		return "devlogin";
	}
	
	@RequestMapping("/checkCode")
	public String checkCode(String userCode,HttpServletRequest request) {
		if(devUserService.check_devUserByCode(userCode)<=0){
			request.setAttribute("error", "用户名错误");
		}else{
			request.setAttribute("error", "");
		}
		request.setAttribute("userCode", userCode);
		return "devlogin";
	}

	
	@RequestMapping("/login")
	public String login(Model model) {
		List<DataDictionary> flatFormList=dataDictionaryService.query();
		model.addAttribute("appInfoList", flatFormList);
		return "devlogin";
	}

	@RequestMapping("/dologin")
	public String dologin(String devCode, String devPassword, Model model, HttpServletRequest request,
			HttpSession session) {
		DevUser backendUser = new DevUser();
		backendUser.setDevCode(devCode);
		backendUser.setDevPassword(devPassword);
		
		if(devUserService.check_devUserByCode(devCode)<=0){
			request.setAttribute("error", "用户名错误");
			return "devlogin";
		}else{
			DevUser devUser = devUserService.Login_devUser(backendUser);
			if (devUser != null) {
				session.setAttribute("devUserSession", devUser);
				request.setAttribute("error", "");
				return "developer/main";
			} else {
				request.setAttribute("error", "密码错误");
				return "devlogin";
			}
		}
		

	}

	@RequestMapping("/main")
	public String main(Model model) {
		return "developer/main";
	}

	
}
