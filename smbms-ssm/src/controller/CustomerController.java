package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.Customer;
import service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/query.html")
	public String query(String name,String pageSize,String curPage,Model model){
		int pageSzie0=5;
		if(pageSize!=null&&!"".equals(pageSize)){
			pageSzie0=Integer.valueOf(pageSize);
		}
		int curPage0=1;
		if(curPage!=null&&!"".equals(curPage)){
			curPage0=Integer.valueOf(curPage);
			if(curPage0<=0){
				curPage0=1;
			}
		}
		List<Customer> list=customerService.queryCustomer(name,(curPage0-1)*pageSzie0, pageSzie0);
		int count=customerService.queryCount(name);
		int pageCount=count%pageSzie0==0?count/pageSzie0:count/pageSzie0+1;
		model.addAttribute("list",list);
		model.addAttribute("count",count);
		model.addAttribute("pageCount",pageCount);
		model.addAttribute("name",name);
		model.addAttribute("pageSize",pageSzie0);
		model.addAttribute("curPage",curPage0);
		return "queryCustomer";
	}
	
	@RequestMapping("/delete.html")
	public String delete(String id,String name,String pageSise,String curPage,Model model) throws Exception{
		int result=customerService.delete(Integer.valueOf(id));
		if(result<0){
			throw  new Exception("É¾³ýÊ§°Ü");
		}
		query(name, pageSise, curPage, model);
		return "queryCustomer";
	}
}
