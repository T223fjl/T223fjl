package service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.level.LevelDao;
import pojo.Level;
import service.LevelService;
@Service
public class LevelServiceImpl implements LevelService{

	@Autowired
	private LevelDao levelDao;
	
	public List<Level> queryLevelByType(int type) {
		return levelDao.queryLevelByType(type);
	}

	public List<Level> queryLevelByPid(int pid) {
		return levelDao.queryLevelByPid(pid);
	}
	public List<Level> queryLevel() {
		 List<Level> level1s=levelDao.queryLevelByPid(0);
		 List<Level> levels=levelDao.queryLevel();
		 List<Level> sonLevels=new ArrayList<Level>();
		 for (int j = 0; j < level1s.size(); j++) {
		 	for (int i = 0; i < levels.size(); i++) {
		 		if(levels.get(i).getParentId()==level1s.get(j).getId()){
					 sonLevels.add(levels.get(i));
				 }
			 }
		 	level1s.get(j).setSonLevels(sonLevels);
		}
		 
		 for (int j = 0; j < level1s.size(); j++) {
			 List<Level> sonLevels0=new ArrayList<Level>();
			 	for (int k = 0; k < level1s.get(j).getSonLevels().size(); k++) {
			 		for (int i = 0; i < levels.size(); i++) {
				 		if(levels.get(i).getParentId()==level1s.get(j).getId()){
				 			sonLevels0.add(levels.get(i));
						 }
					 }
			 		level1s.get(j).getSonLevels().get(k).setSonLevels(sonLevels);
			}
		}
		 
		return level1s;
	}
}
