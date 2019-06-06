package pojo;

import java.util.Date;

public class Mycollection {
	private int id;
	private int conbyUserId;
	private int hotelById;
	private Date hotelByConTime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getConbyUserId() {
		return conbyUserId;
	}
	public void setConbyUserId(int conbyUserId) {
		this.conbyUserId = conbyUserId;
	}
	public int getHotelById() {
		return hotelById;
	}
	public void setHotelById(int hotelById) {
		this.hotelById = hotelById;
	}
	public Date getHotelByConTime() {
		return hotelByConTime;
	}
	public void setHotelByConTime(Date hotelByConTime) {
		this.hotelByConTime = hotelByConTime;
	}
	
}
