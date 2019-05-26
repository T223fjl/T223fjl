package service;

import java.util.List;

import pojo.Hotel;
import pojo.House;

public interface HouseService {
	public List<House> qeuryHouseByHotelId(int hotelId);
	public List<House> getHouseByType(String hType);
	public House qeuryHouseByHouseId(int houseId);
}
