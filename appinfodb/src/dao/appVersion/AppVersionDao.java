package dao.appVersion;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.AppVersion;

public interface AppVersionDao {
	public List<AppVersion> query();
	public AppVersion queryById(int id);
	public int addAppVersion(AppVersion appver);
	public List<AppVersion> queryByAppId(int id);
	
	public int delAppVersion(@Param("appid")Integer appid);
	
	public int updAppVersion(AppVersion appver);
	public int delfile(@Param("id")int id);
	
	public AppVersion queryNew();
}
