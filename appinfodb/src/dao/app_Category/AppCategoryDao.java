package dao.app_Category;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.AppCategory;

public interface AppCategoryDao {
	public List<AppCategory> queryAppCategoryByPid(List idlist);
	public List<AppCategory> queryAppCategory1();
	public List<AppCategory> queryAppCategory(int pid);
	public List<AppCategory> query();
}
