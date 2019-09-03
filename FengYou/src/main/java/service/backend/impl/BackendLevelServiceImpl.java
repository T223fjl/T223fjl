package service.backend.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.backend.BackendLevelDao;
import pojo.Level;
import service.backend.BackendLevelService;

@Service
public class BackendLevelServiceImpl implements BackendLevelService {
	@Autowired
	private BackendLevelDao levelDao;

	/**
	 * 根据地址级别查询所有
	 */
	public List<Level> getLevetype1(int type) {
		return levelDao.getLevetype1(type);
	}

	/**
	 * 通过父类id得到level集合
	 */
	public List<Level> queryLevelByPid(Integer parentId) {
		return levelDao.queryLevelByPid(parentId);
	}

	/**
	 * 查询所有level
	 */
	public List<Level> queryLevel() {
		return levelDao.queryLevel();
	}

}
