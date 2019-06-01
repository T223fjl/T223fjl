package service;

import java.util.List;

import pojo.House;
import pojo.Intoinfo;
import pojo.Order;

public interface OrderService {
	public Order queryOrderById(int id);
	public List<Order> queryOrderByHouseId(int hid);
	public int addOrder(Order order);
	public int addIntoinfo(Intoinfo Intoinfo);
	public Intoinfo getIntoNew();
	public Order getOrderNew();
	public List<Order> queryOrderByDate(Order order);
	public int updOrder(Order o);
}
