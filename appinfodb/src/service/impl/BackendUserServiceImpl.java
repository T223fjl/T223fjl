package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.backend_User.BackendUserDao;
import pojo.BackendUser;
import service.BackendUserService;
@Service("backendUserService")
public class BackendUserServiceImpl implements BackendUserService{
	@Autowired
	private BackendUserDao backendUserDao;
	
	@Override
	public BackendUser Login_backend_User(BackendUser backendUser) {
		return backendUserDao.Login_backend_User(backendUser);
	}

	@Override
	public int check_backUserByCode(String code) {
		return backendUserDao.check_backUserByCode(code);
	}
	
}
