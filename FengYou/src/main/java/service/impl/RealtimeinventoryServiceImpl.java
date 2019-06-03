package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.realtimeinventory.RealtimeinventoryDao;
import pojo.Realtimeinventory;
import service.RealtimeinventoryService;

@Service
public class RealtimeinventoryServiceImpl implements RealtimeinventoryService {

	@Autowired
	private RealtimeinventoryDao realtimeinventoryDao;

	/**
	 * 通过房间id和酒店id查询临时库存表
	 */
	@Override
	public Realtimeinventory queryRealtimeinventoryByHHid(Realtimeinventory r) {
		return realtimeinventoryDao.queryRealtimeinventoryByHHid(r);
	}

	/**
	 * 得到最新的库存记录
	 */
	@Override
	public Realtimeinventory queryRealtimeinventoryNew() {
		return realtimeinventoryDao.queryRealtimeinventoryNew();
	}

	/**
	 * 修改临时库存表中的库存
	 */
	@Override
	public int updRealtimeinventory(Realtimeinventory r) {
		return realtimeinventoryDao.updRealtimeinventory(r);
	}

	/**
	 * 增加库存
	 */
	@Override
	public int addRealtimeinventory(Realtimeinventory r) {
		return realtimeinventoryDao.addRealtimeinventory(r);
	}

}
