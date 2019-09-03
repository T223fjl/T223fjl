package service.backend.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.backend.BackendRawstockDao;
import pojo.Rawstock;
import service.backend.BackendRawstockService;
@Service
public class BackendRawstockServiceImpl implements BackendRawstockService{

	@Autowired
	private BackendRawstockDao backendRawstockdao;
	
	@Override
	public int addawstock(Rawstock rawstock) {
		// TODO Auto-generated method stub
		return backendRawstockdao.addawstock(rawstock);
	}

	@Override
	public Rawstock getlist(Integer houseId) {
		// TODO Auto-generated method stub
		return backendRawstockdao.getlist(houseId);
	}

	@Override
	public int updateraw(Rawstock rawstock) {
		// TODO Auto-generated method stub
		return backendRawstockdao.updateraw(rawstock);
	}

}
