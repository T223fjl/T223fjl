package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.realtimeinventory.RealtimeinventoryDao;
import pojo.Realtimeinventory;
import service.RealtimeinventoryService;
@Service
public class RealtimeinventoryServiceImpl implements RealtimeinventoryService{

	@Autowired
	private RealtimeinventoryDao realtimeinventoryDao;
	
	@Override
	public Realtimeinventory queryRealtimeinventoryByHHid(Realtimeinventory r) {
		return realtimeinventoryDao.queryRealtimeinventoryByHHid(r);
	}

}
