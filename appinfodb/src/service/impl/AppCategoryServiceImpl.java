package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.app_Category.AppCategoryDao;
import pojo.AppCategory;
import service.AppCategoryService;
@Service("appCategoryService")
public class AppCategoryServiceImpl implements AppCategoryService{
	@Autowired
	private AppCategoryDao appCategoryDao;

	@Override
	public List<AppCategory> queryAppCategoryByPid(List dlist) {
		return appCategoryDao.queryAppCategoryByPid(dlist);
	}

	@Override
	public List<AppCategory> queryAppCategory1() {
		return appCategoryDao.queryAppCategory1();
	}

	@Override
	public List<AppCategory> queryAppCategory(int pid) {
		return appCategoryDao.queryAppCategory(pid);
	}
	
	

}
