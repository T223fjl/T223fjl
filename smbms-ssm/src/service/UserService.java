package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.user.UserDao;
import pojo.Role;
import pojo.User;
@Service("userS")
public class UserService implements UserS{
	@Autowired
	UserDao userDao;
	
	public int modify(User user) {
		return userDao.modify(user);
	}
	public List<User> query(Integer currentPageNo, Integer pageSize) {
		return userDao.query(currentPageNo,pageSize);
	}
	public List<Role> queryRole() {
		return userDao.queryRole();
	}
	public List<User> queryByNameRole(@Param("userName") String userName,
			@Param("userName") int userRole,@Param("form") Integer currentPageNo,
			@Param("pageSize") Integer pageSize) {
		return userDao.queryByNameRole( userName,userRole,currentPageNo,pageSize);
	}
	public int add(User user) {
		return userDao.add(user);
	}
	public User queryById(int uid) {
		return userDao.queryById(uid);
	}
	public int delete(int uid) {
		return userDao.delete(uid);
	}
	public int deletes(String[] ids) {
		return userDao.deletes(ids);
	}
	public User login(User user) {
		return userDao.login(user);
	}
	
	public int getCount() {
		return userDao.getCount();
	}
	public int queryByNameRoleCount(String userName, int userRole) {
		return userDao.queryByNameRoleCount(userName, userRole);
	}
	public int pwdmodify(User user) {
		return userDao.pwdmodify(user);
	}
	
}
