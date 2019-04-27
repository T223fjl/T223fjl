package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.AppVersion;

public interface AppVersionService {
	public List<AppVersion> query();
	public AppVersion queryById(int id);
	public List<AppVersion> queryByAppId(int id);
	public int addAppVersion(AppVersion appver);
	public int delAppVersion(int appid);
	public int updAppVersion(AppVersion appver);
	public int delfile(@Param("id")int id);
	public AppVersion queryNew();
}
