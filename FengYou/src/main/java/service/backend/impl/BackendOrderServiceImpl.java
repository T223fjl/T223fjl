package service.backend.impl;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.backend.BackendOrderDao;
import pojo.Chart;
import pojo.Order;
import service.backend.BackendOrderService;
import util.HotelUtil;

@Service
public class BackendOrderServiceImpl implements BackendOrderService {

	@Autowired
	private BackendOrderDao orderDao;

	/**
	 * 首先通过酒店查询，根据预定月份分组，查询月份和每个月每个酒店订单数量
	 * 
	 * @param hid
	 * @return
	 */
	public List<Chart> getlistByidDate(int hid) {
		return orderDao.getlistByidDate(hid);
	}

	/**
	 * 查询所有订单量
	 * 
	 * @return
	 */
	public List<Order> getlist() {
		return orderDao.getlist();
	}

	/**
	 * 三表联查，酒店、房型和订单
	 */
	public List<Order> query() {
		return orderDao.query();
	}

	/**
	 * 在入住和退房时间内查询
	 */
	public List<Order> queryByx(Date checkInDate, Date checkOutDate, String sum) {
		return orderDao.queryByx(checkInDate, checkOutDate, sum);
	}

	/**
	 * 通过入住和退房时间内的之内时间和模糊查询订单号来查询
	 */
	public List<Order> queryByx2(Date checkInDate, Date checkOutDate, String sum) {
		return orderDao.queryByx2(checkInDate, checkOutDate, sum);
	}

	/**
	 * 通过入住和退房时间内的之内时间和模糊查询酒店名称来查询
	 */
	public List<Order> queryByx3(Date checkInDate, Date checkOutDate, String sum) {
		return orderDao.queryByx3(checkInDate, checkOutDate, sum);
	}

	/**
	 * 通过模糊查询酒店名称来查询
	 */
	public List<Order> queryByx4(Date checkInDate, Date checkOutDate, String sum) {
		return orderDao.queryByx4(checkInDate, checkOutDate, sum);
	}

	/**
	 * 通过模糊查询订单号来查询
	 */
	public List<Order> queryByx5(Date checkInDate, Date checkOutDate, String sum) {
		return orderDao.queryByx5(checkInDate, checkOutDate, sum);
	}

	/**
	 * 根据订单id删除订单
	 */
	public int deleteByid(@Param("id") int id) {
		return orderDao.deleteByid(id);
	}

	public List<HotelUtil> getlistHotelUtil() {
		return orderDao.getlistHotelUtil();
	}

}
