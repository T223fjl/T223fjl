package dao.backend;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Hotel;

public interface BackendHotelDao {

	/**
	 * 根据条件查询酒店信息列表hotelName
	 * 
	 * @param hotelName
	 * @param hotelphone
	 * @return
	 * @throws Exception
	 */
	public List<Hotel> gethotel(@Param(value = "hotelName") String hotelName,
			@Param(value = "hotelphone") Integer hotelphone) throws Exception;

	/**
	 * 查询总记录数
	 * 
	 * @param hotelName
	 * @param hotelphone
	 * @return
	 * @throws Exception
	 */
	public int getCount(@Param(value = "hotelName") String hotelName, @Param(value = "hotelphone") Integer hotelphone)
			throws Exception;

	/**
	 * 根据id查询酒店信息
	 * 
	 * @param id
	 * @return
	 */
	public Hotel gethotelByid(@Param(value = "id") Integer id);

	/**
	 * 新增信息
	 * 
	 * @param hotel
	 * @return
	 * @throws Exception
	 */
	public int addhotel(Hotel hotel) throws Exception;

	/**
	 * 修改酒店信息
	 * 
	 * @param hotel
	 * @return
	 */
	public int updateHotel(Hotel hotel);

	// 查询服务信息
	/* public List<Hotel> getServer(String hotelServe); */

	/**
	 * 删除酒店信息
	 * 
	 * @param id
	 * @return
	 */
	public int delete(Integer id);

	/**
	 * 批量删除
	 * 
	 * @param ids
	 * @return
	 */
	public int delhotels(@Param("ids") String[] ids);
}
