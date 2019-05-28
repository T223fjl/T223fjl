package service;

import java.util.Date;
import java.util.List;


import pojo.Hotel;
import pojo.House;
import pojo.Order;

public interface HouseService {
	public List<House> qeuryHouseByHotelId(int hotelId);
	public List<House> getHouseByType(String hType);
	public House qeuryHouseByHouseId(int houseId);
	
}
