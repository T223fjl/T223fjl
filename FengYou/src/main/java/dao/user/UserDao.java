package dao.user;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Mycollection;
import pojo.User;

public interface UserDao {
	public User login(User user);

	public int Registration(User user);

	public List<Mycollection> queryMycollection();

	// 根据id查询会员信息
	public User getUserInfo(@Param(value = "id") Integer id) throws Exception;

	// 根据id修改会员信息
	public int updateUser(User user);

}
