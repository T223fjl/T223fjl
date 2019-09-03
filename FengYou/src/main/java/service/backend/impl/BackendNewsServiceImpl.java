package service.backend.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.backend.BackendNewsDao;
import pojo.Hotel_news;
import service.backend.BackendNewsService;

@Service
public class BackendNewsServiceImpl implements BackendNewsService {

	@Autowired
	private BackendNewsDao newsDao;

	/**
	 * //查询资讯列表
	 * 
	 * @param title
	 * @return
	 */
	public List<Hotel_news> getUserNews(String title) {
		return newsDao.getUserNews(title);
	}

}
