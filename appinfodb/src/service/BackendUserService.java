package service;

import org.apache.ibatis.annotations.Param;

import pojo.BackendUser;

public interface BackendUserService {
	public BackendUser Login_backend_User(BackendUser backendUser);
	public int check_backUserByCode(@Param("userCode")String code);
}
