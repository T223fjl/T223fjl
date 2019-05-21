package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.house.HouseDao;
import pojo.House;
import service.HouseService;
@Service
public class HouseServiceImpl implements HouseService{
	@Autowired
	private HouseDao houseDao;
	
	@Override
	public List<House> qeuryHouseByHotelId(int hotelId) {
		return houseDao.qeuryHouseByHotelId(hotelId);
	}
	
}
