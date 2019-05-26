package service;

import java.util.List;

import pojo.Itrip;
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
	
	//注册验证手机是否存在
	public User registerByPhone(String phone);
	
	//修改密码
	public int updatePwd(User user);
	
	//查询旅客信息
	public List<Itrip> queryBytrip(Integer id)throws Exception;
	
	//删除旅客信息
	public int delete(int id);
}
