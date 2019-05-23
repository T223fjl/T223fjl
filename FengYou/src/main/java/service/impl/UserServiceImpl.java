package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.user.UserDao;
import pojo.Mycollection;
import pojo.User;
import service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	public User login(User user) {
		return userDao.login(user);
	}

	public int Registration(User user) {
		return userDao.Registration(user);
	}

	public List<Mycollection> queryMycollection() {
		return userDao.queryMycollection();
	}

	public User getUserInfo(Integer id) throws Exception {
		return userDao.getUserInfo(id);
	}

	public int updateUser(User user) {
		return userDao.updateUser(user);
	}

	public User registerByPhone(String phone) {
		return userDao.registerByPhone(phone);
	}

}
