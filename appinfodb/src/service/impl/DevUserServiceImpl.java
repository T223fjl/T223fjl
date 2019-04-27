package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.devUser.DevUserDao;
import pojo.DevUser;
import service.DevUserService;

@Service("devUserService")
public class DevUserServiceImpl implements DevUserService{

	@Autowired
	private DevUserDao devUserDao;
	
	@Override
	public DevUser Login_devUser(DevUser devUser) {
		return devUserDao.Login_devUser(devUser);
	}

	@Override
	public int check_devUserByCode(String code) {
		return devUserDao.check_devUserByCode(code);
	}

}
