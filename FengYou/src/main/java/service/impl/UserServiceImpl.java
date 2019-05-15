package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.user.UserDao;
import pojo.User;
import service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	
	public User login(User user) {
		return userDao.login(user);
	}
	public int Registration(User user) {
		return userDao.Registration(user);
	}
}
