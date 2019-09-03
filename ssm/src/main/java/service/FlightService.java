package service;

import java.util.List;

import pojo.Flight;

public interface FlightService {
	public List<Flight> queryByCityId(Flight flight);
	public int addFlight(Flight f);
}
