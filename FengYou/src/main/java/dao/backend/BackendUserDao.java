package dao.backend;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.User;

public interface BackendUserDao {

	/**
	 * 根据用户名和密码登陆
	 * 
	 * @param user
	 * @return
	 */
	public User backLogin(User user);

	/**
	 * 根据条件查询会员信息
	 * 
	 * @param name
	 * @param phone
	 * @return
	 */
	public List<User> getUserlist(@Param(value = "name") String name, @Param(value = "phone") Integer phone);

	/**
	 * 查询总记录数
	 * 
	 * @param name
	 * @param phone
	 * @return
	 * @throws Exception
	 */
	public int getCount(@Param(value = "name") String name, @Param(value = "phone") Integer phone) throws Exception;

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
	 * 新增用户
	 * 
	 * @param user
	 * @return
	 */
	public int addUser(User user);

	/**
	 * 根据id修改会员信息
	 * 
	 * @param user
	 * @return
	 */
	public int modifyUser(User user);

	/**
	 * 注册验证手机是否存在
	 * 
	 * @param phone
	 * @return
	 */
	public int registerByPhone(@Param(value = "phone") String phone);

	/**
	 * 删除用户信息
	 * 
	 * @param id
	 * @return
	 */
	public int delete(int id);
}
