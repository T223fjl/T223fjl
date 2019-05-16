package service;

import java.util.List;

import pojo.Mycollection;
import pojo.User;

public interface UserService {
	public User login(User user);

	public int Registration(User user);

	public List<Mycollection> queryMycollection();

	// 根据id查询会员信息
	public User getUserInfo(Integer id) throws Exception;

	// 根据id修改会员信息
	public int updateUser(User user);
}
