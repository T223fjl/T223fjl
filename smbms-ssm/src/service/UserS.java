package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Role;
import pojo.User;

public interface UserS {
	public int pwdmodify(User user);
	public int modify(User user);
	public int deletes(String[] ids);
	public int delete(int uid);
	public User queryById(int uid);
	public int add(User user);
	public List<User> query(@Param("form") Integer currentPageNo,
			@Param("pageSize") Integer pageSize);
	public List<Role> queryRole();
	public List<User> queryByNameRole(@Param("userName") String userName,
			@Param("userRole") int userRole,
			@Param("form") Integer currentPageNo,
			@Param("pageSize") Integer pageSize);
	public User login(User user);
	public int getCount();
	public int queryByNameRoleCount(@Param("userName") String userName,
			@Param("userRole") int userRole);
	
}
