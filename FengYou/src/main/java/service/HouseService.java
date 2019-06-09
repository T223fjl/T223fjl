package service;

import java.util.List;
import pojo.House;


public interface HouseService {
	/**
	 * 通过房间id查询房间
	 * 
	 * @param hotelId
	 * @return
	 */
	public House qeuryHouseByHouseId(int houseId);
	
	/**
	 * 通过酒店id查询房间并通过类型分组
	 * 
	 * @param hotelId
	 * @return
	 */
	public List<House> qeuryHouseByHotelId(int hotelId);

	/**
	 * 通过房间类型查询房间
	 * 
	 * @param hType
	 * @return
	 */
	public List<House> getHouseByType(int id,String hType);
	
}
