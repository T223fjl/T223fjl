package dao.backend;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Chart;
import pojo.Order;
import util.HotelUtil;

public interface BackendOrderDao {

	/**
	 * 每个酒店订单数量之比
	 * 
	 * @param hid
	 * @return
	 */
	public List<HotelUtil> getlistHotelUtil();

	/**
	 * 首先通过酒店查询，根据预定月份分组，查询月份和每个月每个酒店订单数量
	 * 
	 * @param hid
	 * @return
	 */
	public List<Chart> getlistByidDate(int hid);

	/**
	 * 查询所有订单量
	 * 
	 * @return
	 */
	public List<Order> getlist();

	/**
	 * 三表联查，酒店、房型和订单
	 * 
	 * @return
	 */
	public List<Order> query();

	/**
	 * 在入住和退房时间内查询
	 * 
	 * @param checkInDate
	 * @param checkOutDate
	 * @param sum
	 * @return
	 */
	public List<Order> queryByx(@Param("checkInDate") Date checkInDate, @Param("checkOutDate") Date checkOutDate,
			@Param("sum") String sum);

	/**
	 * 通过入住和退房时间内的之内时间和模糊查询订单号来查询
	 * 
	 * @param checkInDate
	 * @param checkOutDate
	 * @param sum
	 * @return
	 */
	public List<Order> queryByx2(@Param("checkInDate") Date checkInDate, @Param("checkOutDate") Date checkOutDate,
			@Param("sum") String sum);

	/**
	 * 通过入住和退房时间内的之内时间和模糊查询酒店名称来查询
	 * 
	 * @param checkInDate
	 * @param checkOutDate
	 * @param sum
	 * @return
	 */
	public List<Order> queryByx3(@Param("checkInDate") Date checkInDate, @Param("checkOutDate") Date checkOutDate,
			@Param("sum") String sum);

	/**
	 * 通过模糊查询酒店名称来查询
	 * 
	 * @param checkInDate
	 * @param checkOutDate
	 * @param sum
	 * @return
	 */
	public List<Order> queryByx4(@Param("checkInDate") Date checkInDate, @Param("checkOutDate") Date checkOutDate,
			@Param("sum") String sum);

	/**
	 * 通过模糊查询订单号来查询
	 * 
	 * @param checkInDate
	 * @param checkOutDate
	 * @param sum
	 * @return
	 */
	public List<Order> queryByx5(@Param("checkInDate") Date checkInDate, @Param("checkOutDate") Date checkOutDate,
			@Param("sum") String sum);

	/**
	 * 根据订单id删除订单
	 * 
	 * @param id
	 * @return
	 */
	public int deleteByid(@Param("id") int id);
}
