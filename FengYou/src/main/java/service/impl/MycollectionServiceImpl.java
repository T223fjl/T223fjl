package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.mycollection.MycollectionDao;
import pojo.Hotel;
import pojo.Mycollection;
import service.MycollectionService;
@Service
public class MycollectionServiceImpl implements MycollectionService {
	
	@Autowired
	private MycollectionDao mycollectionDao;

	/**
	 * 收藏酒店
	 * 
	 * @return
	 */
	public List<Hotel> query(int hotelById){
		return mycollectionDao.query(hotelById);
	}

	/**
	 * 添加酒店
	 * 
	 * @param mycollection
	 * @return
	 */
	public int add(Mycollection mycollection){
		return mycollectionDao.add(mycollection);
	}

	/**
	 * 删除酒店
	 * 
	 * @param id
	 * @return
	 */
	public int del(int id){
		return mycollectionDao.del(id);
	}
	
}
