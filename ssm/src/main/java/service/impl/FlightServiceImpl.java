package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FlightDao;
import pojo.Flight;
import service.FlightService;
@Service
public class FlightServiceImpl implements FlightService{
	@Autowired
	private FlightDao flightDao; 
	

	public List<Flight> queryByCityId(Flight flight) {
		return flightDao.queryByCityId(flight);
	}


	public int addFlight(Flight f) {
		return flightDao.addFlight(f);
	}
	
}
