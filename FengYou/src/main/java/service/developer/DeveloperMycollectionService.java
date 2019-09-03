package service.developer;

import java.util.List;

import pojo.Hotel;
import pojo.Mycollection;

public interface DeveloperMycollectionService {

	/**
	 * 收藏酒店
	 * 
	 * @return
	 */
	public List<Hotel> query(int hotelById);

	/**
	 * 添加酒店
	 * 
	 * @param mycollection
	 * @return
	 */
	public int add(Mycollection mycollection);

	/**
	 * 删除酒店
	 * 
	 * @param id
	 * @return
	 */
	public int del(int id);

}
