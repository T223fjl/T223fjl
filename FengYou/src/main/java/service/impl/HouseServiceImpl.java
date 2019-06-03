package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.house.HouseDao;
import pojo.House;
import service.HouseService;

@Service
public class HouseServiceImpl implements HouseService {
	@Autowired
	private HouseDao houseDao;

	/**
	 * 通过房间id查询房间
	 */
	@Override
	public House qeuryHouseByHouseId(int houseId) {
		return houseDao.qeuryHouseByHouseId(houseId);
	}

	/**
	 * 通过酒店id查询房间并通过类型分组
	 */
	public List<House> qeuryHouseByHotelId(int hotelId) {
		List<House> list = houseDao.qeuryHouseByHotelId(hotelId);
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setHouseListByType(getHouseByType(list.get(i).getHouseType()));
		}
		return list;
	}

	/**
	 * 通过房间类型查询房间
	 */
	@Override
	public List<House> getHouseByType(String hType) {
		return houseDao.getHouseByType(hType);
	}

}
