package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.order.OrderDao;
import pojo.House;
import pojo.Intoinfo;
import pojo.Order;
import service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderDao orderDao;

	
	@Override
	public List<Order> queryOrderByHouseId(int hid) {
		return orderDao.queryOrderByHouseId(hid);
	}

	@Override
	public int addOrder(Order order) {
		return orderDao.addOrder(order);
	}

	@Override
	public int addIntoinfo(Intoinfo Intoinfo) {
		return orderDao.addIntoinfo(Intoinfo);
	}

	@Override
	public Intoinfo getIntoNew() {
		return orderDao.getIntoNew();
	}

	@Override
	public List<Order> queryOrderByDate(Order order) {
		return orderDao.queryOrderByDate(order);
	}

	@Override
	public Order getOrderNew() {
		return orderDao.getOrderNew();
	}

	@Override
	public int updOrder(Order o) {
		return orderDao.updOrder(o);
	}

	@Override
	public Order queryOrderById(int id) {
		return orderDao.queryOrderById(id);
	}
	
	 
}
