package dao.backend;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Hotel_news;

public interface BackendNewsDao {

	/**
	 * 查询资讯列表
	 * 
	 * @param title
	 * @return
	 */
	public List<Hotel_news> getUserNews(@Param(value = "title") String title);

}
