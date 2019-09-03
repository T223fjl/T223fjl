package dao.developer;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Itrip;
import pojo.Mycollection;
import pojo.User;

public interface DeveloperUserDao {

	/**
	 * 登录
	 * 
	 * @param user
	 * @return
	 */
	public User login(User user);

	/**
	 * 注册
	 * 
	 * @param user
	 * @return
	 */
	public int Registration(User user);

	/**
	 * 查询所有收藏
	 * 
	 * @return
	 */
	public List<Mycollection> queryMycollection();

	/**
	 * 注册验证手机是否存在
	 * 
	 * @param phone
	 * @return
	 */
	public User registerByPhone(@Param(value = "phone") String phone);

	/**
	 * 根据id查询会员信息
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public User getUserInfo(@Param(value = "id") Integer id) throws Exception;

	/**
	 * 根据id修改会员信息
	 * 
	 * @param user
	 * @return
	 */
	public int updateUser(User user);

	/**
	 * 修改密码
	 * 
	 * @param user
	 * @return
	 */
	public int updatePwd(User user);

	/**
	 * 查询旅客信息
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public List<Itrip> queryBytrip(@Param(value = "id") Integer id) throws Exception;

	/**
	 * 删除旅客信息
	 * 
	 * @param id
	 * @return
	 */
	public int delete(int id);

}
