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
	/**
	 * 得到最新的订单
	 * @return
	 */
	public Intoinfo getIntoNew();
	
	public Order getOrderNew();
	
	/**
	 * 查询在预定期间的订单
	 * @param order
	 * @return
	 */
	public List<Order> queryOrderByDate(Order order);
	
	/**
	 * 修改订单状态和订单库存恢复状态
	 * @param o
	 * @return
	 */
	public int updOrder(Order o);
}
