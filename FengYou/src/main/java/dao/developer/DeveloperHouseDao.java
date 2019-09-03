package dao.developer;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Hotel;
import pojo.House;

public interface DeveloperHouseDao {

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
	public List<House> getHouseByType(@Param("hotelId") int hid, @Param("houseType") String hType);

}
