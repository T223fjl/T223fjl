package service;

import java.util.List;

import pojo.House;

public interface HouseService {
	public List<House> qeuryHouseByHotelId(int hotelId);
}
