package dao.backend_User;

import org.apache.ibatis.annotations.Param;

import pojo.BackendUser;

public interface BackendUserDao {
	/*
	 *µÇÂ¼
	 */
	public BackendUser Login_backend_User(BackendUser backendUser);
	/*
	 * ÅĞ¶ÏÊÇ·ñÒÑ´æÔÚcode
	 */
	public int check_backUserByCode(@Param("userCode")String code);
}
