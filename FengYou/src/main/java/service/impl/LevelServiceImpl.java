package service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.level.LevelDao;
import pojo.Level;
import service.LevelService;

@Service
public class LevelServiceImpl implements LevelService {

	@Autowired
	private LevelDao levelDao;

	/**
	 * 通过type得到level集合
	 */
	public List<Level> queryLevelByType(int type) {
		return levelDao.queryLevelByType(type);
	}

	/**
	 * 通过父类id得到level集合
	 */
	public List<Level> queryLevelByPid(int pid) {
		return levelDao.queryLevelByPid(pid);
	}

	/**
	 * 查询所有level
	 */
	public List<Level> queryLevel() {
		List<Level> level1s = levelDao.queryLevelByPid(0);
		List<Level> levels = levelDao.queryLevel();

		for (int j = 0; j < level1s.size(); j++) {
			List<Level> sonLevels = new ArrayList<Level>();
			for (int i = 0; i < levels.size(); i++) {
				if (level1s.get(j).getId() == levels.get(i).getParentId()) {
					sonLevels.add(levels.get(i));
				}
			}
			level1s.get(j).setSonLevels(sonLevels);
		}
		return level1s;
	}

	/**
	 * 模糊查询后面是市的所有城市
	 */
	public List<Level> queryByName() {
		return levelDao.queryByName();
	}

}
