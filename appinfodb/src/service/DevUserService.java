package service;

import org.apache.ibatis.annotations.Param;

import pojo.DevUser;

public interface DevUserService {
	public DevUser Login_devUser(DevUser devUser);
	/*
	 * �ж��Ƿ��Ѵ���code
	 */
	public int check_devUserByCode(@Param("devCode")String code);
}
