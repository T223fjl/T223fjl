package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.house.HouseDao;
import pojo.Hotel;
import pojo.House;
import service.HouseService;
@Service
public class HouseServiceImpl implements HouseService{
	@Autowired
	private HouseDao houseDao;

	
	public List<House> qeuryHouseByHotelId(int hotelId) {
		List<House>  list=houseDao.qeuryHouseByHotelId(hotelId);
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setHouseListByType(getHouseByType(list.get(i).getHouseType()));
		}
		return list;
	}


	@Override
	public List<House> getHouseByType(String hType) {
		return houseDao.getHouseByType(hType);
	}
	
	
}
