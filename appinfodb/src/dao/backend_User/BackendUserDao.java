package dao.backend_User;

import org.apache.ibatis.annotations.Param;

import pojo.BackendUser;

public interface BackendUserDao {
	/*
	 *��¼
	 */
	public BackendUser Login_backend_User(BackendUser backendUser);
	/*
	 * �ж��Ƿ��Ѵ���code
	 */
	public int check_backUserByCode(@Param("userCode")String code);
}
