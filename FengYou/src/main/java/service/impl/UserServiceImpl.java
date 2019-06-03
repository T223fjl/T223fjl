package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.user.UserDao;
import pojo.Itrip;
import pojo.Mycollection;
import pojo.User;
import service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	/**
	 * 登录
	 */
	public User login(User user) {
		return userDao.login(user);
	}

	/**
	 * 注册
	 */
	public int Registration(User user) {
		return userDao.Registration(user);
	}

	/**
	 * 查询所有收藏
	 */
	public List<Mycollection> queryMycollection() {
		return userDao.queryMycollection();
	}

	/**
	 * 根据id查询会员信息
	 */
	public User getUserInfo(Integer id) throws Exception {
		return userDao.getUserInfo(id);
	}

	/**
	 * 根据id修改会员信息
	 */
	public int updateUser(User user) {
		return userDao.updateUser(user);
	}

	/**
	 * 注册验证手机是否存在
	 */
	public User registerByPhone(String phone) {
		return userDao.registerByPhone(phone);
	}

	/**
	 * 修改密码
	 */
	public int updatePwd(User user) {
		return userDao.updatePwd(user);
	}

	/**
	 * 查询旅客信息
	 */
	public List<Itrip> queryBytrip(Integer id) throws Exception {
		return userDao.queryBytrip(id);
	}

	/**
	 * 删除旅客信息
	 */
	public int delete(int id) {
		return userDao.delete(id);
	}

}
