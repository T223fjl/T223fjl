package pojo;

import java.util.Date;

public class Flight {
	private int id;
	private String flightNo;
	private int departureCity;
	private Date departureTime;
	private int arrivalCity;
	private Date arrivalTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFlightNo() {
		return flightNo;
	}
	public void setFlightNo(String flightNo) {
		this.flightNo = flightNo;
	}
	public int getDepartureCity() {
		return departureCity;
	}
	public void setDepartureCity(int departureCity) {
		this.departureCity = departureCity;
	}
	public Date getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(Date departureTime) {
		this.departureTime = departureTime;
	}
	public int getArrivalCity() {
		return arrivalCity;
	}
	public void setArrivalCity(int arrivalCity) {
		this.arrivalCity = arrivalCity;
	}
	public Date getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(Date arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
}
