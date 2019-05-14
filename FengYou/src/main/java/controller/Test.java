package controller;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.UserService;

public class Test {
	
	public static void main(String[] args) throws UnknownHostException {
		  // 获取IP地址         
		  String ip = InetAddress.getLocalHost().getHostAddress();   
		  // 获取计算机名           
		  String name = InetAddress.getLocalHost().getHostName();           
		   //打印              
		  System.out.println("IP地址："+ip);  
		  System.err.println("计算机名："+name);   
		 }
}
