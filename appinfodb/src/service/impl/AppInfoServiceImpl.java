package service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.appInfo.AppInfoDao;
import dao.app_Category.AppCategoryDao;
import dao.dataDictionary.DataDictionaryDao;
import pojo.AppCategory;
import pojo.AppInfo;
import pojo.AppVersion;
import pojo.DataDictionary;
import service.AppInfoService;
import service.AppVersionService;
@Service("appInfoService")
public class AppInfoServiceImpl implements AppInfoService{

	@Autowired
	private AppInfoDao appInfoDao;
	@Autowired
	private AppCategoryDao appCategoryDao;
	@Autowired
	private DataDictionaryDao dataDictionaryDao;
	@Autowired
	private AppVersionService appVersionService;
	@Override
	public List<AppInfo> query(@Param("status")int status,@Param("softwareName")String softwareName,
			@Param("flatformId")int flatformId,@Param("categoryLevel1")int categoryLevel1,
			@Param("categoryLevel2")int categoryLevel2,@Param("categoryLevel3")int categoryLevel3,
			@Param("from")int from,@Param("pageSize")int pageSize
			){
		List<AppCategory> appCategorylist=appCategoryDao.query();
		List<AppInfo> appInfolist=appInfoDao.query(status,softwareName, flatformId, categoryLevel1, categoryLevel2, categoryLevel3, from, pageSize);
		List<DataDictionary> dataDictionarylist=dataDictionaryDao.query();
		List<AppVersion> appVersionlist =appVersionService.query();
		for (int i = 0; i < appInfolist.size(); i++) {
			for (int j = 0; j < dataDictionarylist.size(); j++) {
				if(dataDictionarylist.get(j).getTypeName().equals("所属平台")){
					if(appInfolist.get(i).getFlatformId()==dataDictionarylist.get(j).getValueId()){
						appInfolist.get(i).setFlatformName(dataDictionarylist.get(j).getValueName());
					}
				}
				if(dataDictionarylist.get(j).getTypeName().equals("APP状态")){
					if(appInfolist.get(i).getStatus()==dataDictionarylist.get(j).getValueId()){
						appInfolist.get(i).setStatusName(dataDictionarylist.get(j).getValueName());
					}
				}
			}
			for (int j = 0; j < appCategorylist.size(); j++) {
				if(appInfolist.get(i).getCategoryLevel1()==appCategorylist.get(j).getId()){
					appInfolist.get(i).setCategoryLevel1Name(appCategorylist.get(j).getCategoryName());
				}
				if(appInfolist.get(i).getCategoryLevel2()==appCategorylist.get(j).getId()){
					appInfolist.get(i).setCategoryLevel2Name(appCategorylist.get(j).getCategoryName());
				}
				if(appInfolist.get(i).getCategoryLevel3()==appCategorylist.get(j).getId()){
					appInfolist.get(i).setCategoryLevel3Name(appCategorylist.get(j).getCategoryName());
				}
			}
			for (int j = 0; j < appVersionlist.size(); j++) {
				if(appInfolist.get(i).getId()==appVersionlist.get(j).getAppId()){
					appInfolist.get(i).setVersionNo(appVersionlist.get(j).getVersionNo());
				}
				if(appInfolist.get(i).getId()==appVersionlist.get(j).getAppId()){
					appInfolist.get(i).setVersionId(appVersionlist.get(j).getId());
				}
			}
			
		}
		
		return appInfolist;
	}
	@Override
	public int queryCount(int status,String softwareName, int flatformId, int categoryLevel1, int categoryLevel2,
			int categoryLevel3) {
		
		return appInfoDao.queryCount(status,softwareName, flatformId, categoryLevel1, categoryLevel2, categoryLevel3);
	}
	@Override
	public AppInfo queryByAidVid(int id, int versionId) {
		List<AppCategory> appCategorylist=appCategoryDao.query();
		List<DataDictionary> dataDictionarylist=dataDictionaryDao.query();
		List<AppVersion> appVersionlist =appVersionService.query();
		AppInfo app=appInfoDao.queryByAidVid(id, versionId);
			for (int j = 0; j < dataDictionarylist.size(); j++) {
				if(dataDictionarylist.get(j).getTypeName().equals("所属平台")){
					if(app.getFlatformId()==dataDictionarylist.get(j).getValueId()){
						app.setFlatformName(dataDictionarylist.get(j).getValueName());
					}
				}
				if(dataDictionarylist.get(j).getTypeName().equals("APP状态")){
					if(app.getStatus()==dataDictionarylist.get(j).getValueId()){
						app.setStatusName(dataDictionarylist.get(j).getValueName());
					}
				}
			}
			for (int j = 0; j < appCategorylist.size(); j++) {
				if(app.getCategoryLevel1()==appCategorylist.get(j).getId()){
					app.setCategoryLevel1Name(appCategorylist.get(j).getCategoryName());
				}
				if(app.getCategoryLevel2()==appCategorylist.get(j).getId()){
					app.setCategoryLevel2Name(appCategorylist.get(j).getCategoryName());
				}
				if(app.getCategoryLevel3()==appCategorylist.get(j).getId()){
					app.setCategoryLevel3Name(appCategorylist.get(j).getCategoryName());
				}
			}
			for (int j = 0; j < appVersionlist.size(); j++) {
				if(app.getId()==appVersionlist.get(j).getAppId()){
					app.setVersionNo(appVersionlist.get(j).getVersionNo());
				}
				if(app.getId()==appVersionlist.get(j).getAppId()){
					app.setVersionId(appVersionlist.get(j).getId());
				}
			}
			
		return app;
	}
	@Override
	public int checkAppInfo(int id, int status) {
		return appInfoDao.checkAppInfo(id, status);
	}
	@Override
	public int addAppInfo(AppInfo app) {
		return appInfoDao.addAppInfo(app);
	}
	@Override
	public AppInfo queryByName(String name) {
		return appInfoDao.queryByName(name);
	}
	@Override
	public int updAppInfo(AppInfo app) {
		return appInfoDao.updAppInfo(app);
	}
	@Override
	public int delfile(int id) {
		return appInfoDao.delfile(id);
	}
	@Override
	public int delAppInfo(int id) {
		return appInfoDao.delAppInfo(id);
	}
	@Override
	public int addVerOfApp(Integer id, Integer versionId) {
		return appInfoDao.addVerOfApp(id, versionId);
	}

}
