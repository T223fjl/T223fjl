package service.backend.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.backend.BackendHouseDao;
import pojo.House;
import service.backend.BackendHouseService;

@Service
public class BackendHouseServiceImpl implements BackendHouseService {

	@Autowired
	private BackendHouseDao houseDao;

	/**
	 * 查询所有房间信息
	 */
	public List<House> queryhouse() {
		return houseDao.queryhouse();
	}

	@Override
	public int addorder(House house) {
		// TODO Auto-generated method stub
		return houseDao.addorder(house);
	}

	@Override
	public House gethouseByid(Integer id) {
		// TODO Auto-generated method stub
		return houseDao.gethouseByid(id);
	}

	@Override
	public House gethouseByID(Integer 	houseId) {
		// TODO Auto-generated method stub
		return houseDao.gethouseByID(houseId);
	}

	@Override
	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return houseDao.delete(id);
	}

	@Override
	public int delhouses(String[] ids) {
		// TODO Auto-generated method stub
		return houseDao.delhouses(ids);
	}

	@Override
	public int updatehouse(House house) {
		// TODO Auto-generated method stub
		return houseDao.updatehouse(house);
	}

	@Override
	public House getHouseNew() {
		// TODO Auto-generated method stub
		return houseDao.getHouseNew();
	}

}
