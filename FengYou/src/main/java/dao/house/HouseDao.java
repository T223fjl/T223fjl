package dao.house;

import java.util.List;

import pojo.Hotel;
import pojo.House;

public interface HouseDao {
	/**
	 * 通过酒店id查询房间
	 * @param hotelId
	 * @return
	 */
	public List<House> qeuryHouseByHotelId(int hotelId);
	
	public List<House> getHouseByType(String hType);
}
