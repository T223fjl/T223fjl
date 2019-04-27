package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.appInfo.AppInfoDao;
import dao.appVersion.AppVersionDao;
import dao.dataDictionary.DataDictionaryDao;
import pojo.AppInfo;
import pojo.AppVersion;
import pojo.DataDictionary;
import service.AppVersionService;

@Service("appVersionService")
public class AppVersionServiceImpl implements AppVersionService {
	@Autowired
	private AppVersionDao appVersionDao;
	@Autowired
	private AppInfoDao appInfoDao;
	@Autowired
	private DataDictionaryDao dataDictionaryDao;
	@Override
	public List<AppVersion> query() {
		return appVersionDao.query();
	}

	@Override
	public AppVersion queryById(int id) {
		return appVersionDao.queryById(id);
	}

	@Override
	public List<AppVersion> queryByAppId(int id) {
		AppInfo app = appInfoDao.queryByAidVid(id, 0);
		List<DataDictionary> dataDictionarylist=dataDictionaryDao.query();
		List<AppVersion> list=appVersionDao.queryByAppId(id);
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setAppName(app.getAPKName());
			for (int j = 0; j < dataDictionarylist.size(); j++) {
				if(dataDictionarylist.get(j).getTypeName().equals("·¢²¼×´Ì¬")){
					list.get(i).setPublishStatusName(dataDictionarylist.get(j).getValueName());
				}
			}
		}
		return list;
	}

	@Override
	public int addAppVersion(AppVersion appver) {
		return appVersionDao.addAppVersion(appver);
	}

	@Override
	public int delAppVersion(int appid) {
		return appVersionDao.delAppVersion(appid);
	}

	@Override
	public int updAppVersion(AppVersion appver) {
		return appVersionDao.updAppVersion(appver);
	}

	@Override
	public int delfile(int id) {
		return appVersionDao.delfile(id);
	}

	@Override
	public AppVersion queryNew() {
		return appVersionDao.queryNew();
	}

}
