package controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.City;
import pojo.Flight;
import service.CityService;
import service.FlightService;

@Controller
public class UserController {
	@Autowired
	private FlightService flightService;
	@Autowired
	private CityService cityService;
	@RequestMapping("/flightList")
	public String flightList(Flight flight,Model model) throws ParseException{
		List<Flight> flights=null;
		if(flight.getDepartureCity()!=0){
			System.out.println(flight.getDepartureCity()+"  "+flight.getArrivalCity());
			flights=flightService.queryByCityId(flight);
			SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			model.addAttribute("count", 1);
		}else{
			model.addAttribute("count", 0);
		}
		model.addAttribute("flights", flights);
		List<City> citys =cityService.query();
		model.addAttribute("citys", citys);
		return "query";
	}
	@RequestMapping("/toadd")
	public String toadd(Flight flight,Model model) throws ParseException{
		List<City> citys =cityService.query();
		model.addAttribute("citys", citys);
		return "add";
	}
	@RequestMapping("/add")
	public String add(String flightNo,String departureCity ,
			String departureTime ,String arrivalCity ,String arrivalTime,Model model) throws ParseException{
		Flight flight=new Flight();
		flight.setArrivalCity(Integer.valueOf(arrivalCity));
		flight.setArrivalTime(Date.valueOf(arrivalTime));
		flight.setDepartureCity(Integer.valueOf(departureCity));
		flight.setDepartureTime(Date.valueOf(departureTime));
		flight.setFlightNo(flightNo);
		if(flight.getFlightNo()!=null){
			int r=flightService.addFlight(flight);
		}
		return "redirect:flightList";
	}
	
}
