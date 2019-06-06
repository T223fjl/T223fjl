package dao.order;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Hotel;
import pojo.Intoinfo;
import pojo.Order;

public interface OrderDao {
	
	/**
	 * 通过id得到订单
	 * @return
	 */
	public Order getOrderById(int id);
	
	/**
	 * 通过房间id查询订单
	 * @param hid
	 * @return
	 */
	public List<Order> queryOrderByHouseId(int hid);
	
	/**
	 * 添加订单
	 * @param order
	 * @return
	 */
	public int addOrder(Order order);
	
	/**
	 * 添加入住信息
	 * @param Intoinfo
	 * @return
	 */
	public int addIntoinfo(Intoinfo Intoinfo);
	
	/**
	 * 得到最新的入住信息
	 * @return
	 */
	public Intoinfo getIntoNew();
	
	/**
	 * 得到最新的订单
	 * @return
	 */
	public Order getOrderNew();
	
	/**
	 * 查询在预定期间的订单
	 * @param order
	 * @return
	 */
	public List<Order> queryOrderByDate(Order order);
	
	/**
	 * 修改订单状态和订单库存恢复状态
	 * 
	 * @param o
	 * @return
	 */
	public int updOrder(Order o);
	
	/**
	 * 根据用户id查询订单详情
	 * @param id
	 * @return
	 */
	public List<Order> queryOrderByUserId(@Param(value = "userId")int userId);
	
}
