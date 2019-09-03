package dao;

import java.util.List;

import pojo.Flight;

public interface FlightDao {
	public List<Flight> queryByCityId(Flight flight);
	public int addFlight(Flight f);
}
