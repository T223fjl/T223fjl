package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Order;
import service.OrderService;

@Controller
public class AjaxController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/TimeOut")
	@ResponseBody
	public Map f(String orderId,HttpServletResponse response, HttpServletRequest request) throws IOException {
		Map<String,String> map=new HashMap<String,String>();
		if(orderId!=null&&!"".equals(orderId)){
			Order o=orderService.getOrderNew();
			o.setOrderStatus(2);
			int r=orderService.updOrder(o);
			map.put("succes", "succes");
		}
		return map;
	}
}
