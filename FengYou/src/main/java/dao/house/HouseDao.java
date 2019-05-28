package dao.house;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Hotel;
import pojo.House;
import pojo.Order;

public interface HouseDao {
	/**
	 * 通过酒店id查询房间并通过类型分组
	 * @param hotelId
	 * @return
	 */
	public List<House> qeuryHouseByHotelId(int hotelId);
	
	
	public List<House> getHouseByType(String hType);
	/**
	 * 通过房间id查询房间
	 * @param hotelId
	 * @return
	 */
	public House qeuryHouseByHouseId(int houseId);
	
}
