package dao.appInfo;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import pojo.AppInfo;

public interface AppInfoDao {
	public List<AppInfo> query(@Param("status")int status,@Param("softwareName")String softwareName,
			@Param("flatformId")int flatformId,@Param("categoryLevel1")int categoryLevel1,
			@Param("categoryLevel2")int categoryLevel2,@Param("categoryLevel3")int categoryLevel3,
			@Param("from")int from,@Param("pageSize")int pageSize
			);
	public int queryCount(@Param("status")int status,@Param("softwareName")String softwareName,
			@Param("flatformId")int flatformId,@Param("categoryLevel1")int categoryLevel1,
			@Param("categoryLevel2")int categoryLevel2,@Param("categoryLevel3")int categoryLevel3
			);
	public AppInfo queryByAidVid(@Param("id")int id,
			@Param("versionId")int versionId);
	public int checkAppInfo(@Param("id")int id,
			@Param("status")int status);
	public int addAppInfo(AppInfo app);
	
	public AppInfo queryByName(String name);
	
	public int updAppInfo(AppInfo app);
	
	public int delfile(int id);
	
	public int delAppInfo(@Param("id")Integer id);
	
	public int addVerOfApp(@Param("id")Integer id,@Param("versionId")Integer versionId);
}
