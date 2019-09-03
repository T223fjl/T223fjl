package controller.developer;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Mycollection;
import pojo.User;
import service.developer.DeveloperMycollectionService;
import service.developer.DeveloperUserService;

@Controller
public class MyCollectionController {

	@Autowired
	private DeveloperUserService DeveloperuserService;
	@Autowired
	private DeveloperMycollectionService mycollectionService;

	/*
	 * 添加收藏
	 */
	@RequestMapping(value = "/ToCollectAdd")
	public void collectAdd(String hotelId, HttpSession session, HttpServletResponse response)
			throws IOException, ParseException {
		System.out.println("添加收藏");
		PrintWriter out = response.getWriter();
		System.out.println("hotelId=" + hotelId);
		User user = (User) session.getAttribute("loginUser");
		System.out.println("用户id" + user.getId());
		Mycollection mycollection = new Mycollection();
		mycollection.setHotelById(Integer.valueOf(hotelId));
		mycollection.setConbyUserId(user.getId());
		System.out.println(new Date());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		mycollection.setHotelByConTime(format.parse(format.format(new Date())));
		System.out.println(mycollection.getHotelByConTime());
		int result = mycollectionService.add(mycollection);
		boolean IsOk = false;
		if (result > 0) {
			List<Mycollection> collections = DeveloperuserService.queryMycollection();
			session.setAttribute("collections", collections);
			IsOk = true;
		} else {
			IsOk = false;
		}
		List<Mycollection> collections = DeveloperuserService.queryMycollection();
		session.setAttribute("collections", collections);
		out.print(IsOk);
		out.flush();
		out.close();
	}

	/*
	 * 删除收藏
	 */
	@RequestMapping(value = "/ToCollectDel")
	public void collectDel(String hotelById, HttpSession session, HttpServletResponse response)
			throws IOException, ParseException {
		System.out.println("删除收藏");
		PrintWriter out = response.getWriter();
		System.out.println("collId=" + hotelById);
		int result = mycollectionService.del(Integer.valueOf(hotelById));

		boolean IsOk = false;
		if (result > 0) {
			IsOk = true;
		} else {
			IsOk = false;
		}
		List<Mycollection> collections = DeveloperuserService.queryMycollection();
		session.setAttribute("collections", collections);
		out.print(IsOk);
		out.flush();
		out.close();
	}

}
