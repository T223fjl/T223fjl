package dao.developer;

import pojo.Rawstock;
import pojo.Realtimeinventory;

public interface DeveloperRealtimeinventoryDao {
	/**
	 * 通过房间id和酒店id查询原始库存表
	 * 
	 * @param r
	 * @return
	 */
	public Rawstock queryRawstockByHHid(Rawstock r);
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
