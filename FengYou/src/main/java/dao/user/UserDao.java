package dao.user;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Mycollection;
import pojo.User;

public interface UserDao {
	public User login(User user);

	public int Registration(User user);

	public List<Mycollection> queryMycollection();
	
	//注册验证手机是否存在
	public User registerByPhone(@Param(value = "phone") String phone);

	// 根据id查询会员信息
	public User getUserInfo(@Param(value = "id") Integer id) throws Exception;

	// 根据id修改会员信息
	public int updateUser(User user);

}
