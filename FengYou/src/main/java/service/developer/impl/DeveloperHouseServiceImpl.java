package service.developer.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.developer.DeveloperHouseDao;
import pojo.House;
import service.developer.DeveloperHouseService;

@Service
public class DeveloperHouseServiceImpl implements DeveloperHouseService {
	@Autowired
	private DeveloperHouseDao houseDao;

	/**
	 * 通过房间id查询房间
	 */
	public House qeuryHouseByHouseId(int houseId) {
		return houseDao.qeuryHouseByHouseId(houseId);
	}

	/**
	 * 通过酒店id查询房间并通过类型分组
	 */
	public List<House> qeuryHouseByHotelId(int hotelId) {
		List<House> list = houseDao.qeuryHouseByHotelId(hotelId);
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setHouseListByType(getHouseByType(hotelId, list.get(i).getHouseType()));
		}
		return list;
	}

	/**
	 * 通过房间类型查询房间
	 */
	public List<House> getHouseByType(int id, String hType) {
		return houseDao.getHouseByType(id, hType);
	}

}
