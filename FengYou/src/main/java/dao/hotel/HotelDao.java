package dao.hotel;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Hotel;

public interface HotelDao {

	/**
	 * 多条件查询酒店信息
	 * 
	 * @param hotelRating
	 * @param level1
	 * @param level2
	 * @param bigPrice
	 * @param smallPrice
	 * @param sort
	 * @param desc
	 * @return
	 */
	public List<Hotel> queryHotel(@Param("hotelRating") int hotelRating, @Param("level1") int level1,
			@Param("level2") int level2,@Param("level3") int level3, @Param("bigPrice") int bigPrice, @Param("smallPrice") int smallPrice,
			@Param("sort") String sort, @Param("desc") String desc);

	/**
	 * 通过酒店名字和地址的关键字和目的地来搜索酒店
	 * 
	 * @param keywords
	 * @param destination
	 * @return
	 */
	public List<Hotel> queryHotelByName(@Param("keywords") String keywords, @Param("destination") int destination);

	/**
	 * 根据id来查询酒店
	 * 
	 * @param hid
	 * @return
	 */
	public Hotel getHotelById(int hid);

	/**
	 * 根据城市表的名称查询酒店
	 * 
	 * @param hotel
	 * @return
	 */
	public List<Hotel> query(@Param(value = "hotel") String hotel);

	/**
	 * 根据订单id查询酒店信息
	 * @param OrderId
	 * @return
	 */
	public Hotel queryHotelByOrderId(@Param(value = "OrderId")int OrderId);
	
}
