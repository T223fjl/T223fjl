package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.AppCategory;

public interface AppCategoryService {
	public List<AppCategory> queryAppCategoryByPid(List list);
	public List<AppCategory> queryAppCategory1();
	public List<AppCategory> queryAppCategory(int pid);
}
