package dao.devUser;

import org.apache.ibatis.annotations.Param;

import pojo.DevUser;

public interface DevUserDao {
	
	
	public DevUser Login_devUser(DevUser devUser);
	/*
	 * ≈–∂œ «∑Ò“—¥Ê‘⁄code
	 */
	public int check_devUserByCode(@Param("devCode")String code);
}
