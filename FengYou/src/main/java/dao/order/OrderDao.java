package dao.order;

import java.util.List;

import pojo.House;
import pojo.Intoinfo;
import pojo.Order;

public interface OrderDao {
	public List<Order> queryOrderByHouseId(int hid);
	
	public int addOrder(Order order);
	/**
	 * 添加入住信息
	 * @param Intoinfo
	 * @return
	 */
	public int addIntoinfo(Intoinfo Intoinfo);
	
	public Intoinfo getIntoNew();
	
	public Order getOrderNew();
	
	public List<Order> queryOrderByDate(Order order);
}
