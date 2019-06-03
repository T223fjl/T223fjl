package service;

import pojo.Realtimeinventory;

public interface RealtimeinventoryService {
	
	/**
	 * 通过房间id和酒店id查询临时库存表
	 * 
	 * @param r
	 * @return
	 */
	public Realtimeinventory queryRealtimeinventoryByHHid(Realtimeinventory r);

	/**
	 * 得到最新的库存记录
	 * 
	 * @return
	 */
	public Realtimeinventory queryRealtimeinventoryNew();

	/**
	 * 修改临时库存表中的库存
	 * 
	 * @param r
	 * @return
	 */
	public int updRealtimeinventory(Realtimeinventory r);

	/**
	 * 增加库存
	 * 
	 * @param r
	 * @return
	 */
	public int addRealtimeinventory(Realtimeinventory r);
}
