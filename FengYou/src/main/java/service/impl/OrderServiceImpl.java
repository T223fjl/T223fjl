package service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import dao.hotel.HotelDao;
import dao.order.OrderDao;
import pojo.Hotel;
import pojo.Intoinfo;
import pojo.Order;
import service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private HotelDao hotelDao;

	/**
	 * 通过房间id查询订单
	 */
	@Override
	public List<Order> queryOrderByHouseId(int hid) {
		return orderDao.queryOrderByHouseId(hid);
	}

	/**
	 * 添加订单
	 */
	@Override
	public int addOrder(Order order) {
		return orderDao.addOrder(order);
	}

	/**
	 * 添加入住信息
	 */
	@Override
	public int addIntoinfo(Intoinfo Intoinfo) {
		return orderDao.addIntoinfo(Intoinfo);
	}

	/**
	 * 得到最新的入住信息
	 */
	@Override
	public Intoinfo getIntoNew() {
		return orderDao.getIntoNew();
	}

	/**
	 * 得到最新的订单
	 */
	@Override
	public Order getOrderNew() {
		return orderDao.getOrderNew();
	}

	/**
	 * 查询在预定期间的订单
	 */
	@Override
	public List<Order> queryOrderByDate(Order order) {
		return orderDao.queryOrderByDate(order);
	}

	/**
	 * 修改订单状态和订单库存恢复状态
	 */
	@Override
	public int updOrder(Order o) {
		return orderDao.updOrder(o);
	}

	/**
	 * 根据用户id查询订单详情
	 * @param id
	 * @return
	 */
	public  List<Order> queryOrderByUserId(int userId){
		List<Order> order =null;
		order=orderDao.queryOrderByUserId(userId);
		for (int i = 0; i < order.size(); i++) {
			System.out.println("id="+order.get(i).getId());
			order.get(i).setHotel(hotelDao.queryHotelByOrderId(order.get(i).getId()));
			System.out.println("le"+order.get(i).getHotel());
		}
		return order;
	}

	@Override
	public PageInfo<Order> findOrderByUserId(int userId, int page,int size) {
		PageHelper.startPage(page, size);
		List<Order> orders = queryOrderByUserId(userId);
		PageInfo<Order> pageInfoUser = new PageInfo<>(orders);
		return pageInfoUser;
	}

	@Override
	public Order getOrderById(int id) {
		return orderDao.getOrderById(id);
	}
}
