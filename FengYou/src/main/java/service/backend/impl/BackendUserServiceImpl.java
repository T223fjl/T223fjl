package service.backend.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.backend.BackendUserDao;
import pojo.User;
import service.backend.BackendUserService;

@Service
public class BackendUserServiceImpl implements BackendUserService {
	@Autowired
	private BackendUserDao userDao;

	/**
	 * 根据用户名和密码登陆
	 * 
	 * @param user
	 * @return
	 */
	public User backLogin(User user) {
		return userDao.backLogin(user);
	}

	/**
	 * 根据条件查询会员信息
	 * 
	 * @param name
	 * @param phone
	 * @return
	 */
	public List<User> getUserlist(String name, Integer phone) {
		return userDao.getUserlist(name, phone);
	}

	/**
	 * 查询总记录数
	 * 
	 * @param name
	 * @param phone
	 * @return
	 * @throws Exception
	 */
	public int getCount(String name, Integer phone) throws Exception {
		return userDao.getCount(name, phone);
	}

	/**
	 * 根据id查询会员信息
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public User getUserInfo(Integer id) throws Exception {
		return userDao.getUserInfo(id);
	}

	/**
	 * 根据id修改会员信息
	 * 
	 * @param user
	 * @return
	 */
	public int updateUser(User user) {
		return userDao.updatePwd(user);
	}

	/**
	 * 修改密码
	 * 
	 * @param user
	 * @return
	 */
	public int updatePwd(User user) {
		return userDao.updatePwd(user);
	}

	/**
	 * 新增用户
	 * 
	 * @param user
	 * @return
	 */
	public int addUser(User user) {
		return userDao.addUser(user);
	}

	/**
	 * 根据id修改会员信息
	 * 
	 * @param user
	 * @return
	 */
	public int modifyUser(User user) {
		return userDao.modifyUser(user);
	}

	/**
	 * 注册验证手机是否存在
	 * 
	 * @param phone
	 * @return
	 */
	public int registerByPhone(String phone) {
		return userDao.registerByPhone(phone);
	}

	/**
	 * 删除用户信息
	 * 
	 * @param id
	 * @return
	 */
	public int delete(int id) {
		return userDao.delete(id);
	}
}
