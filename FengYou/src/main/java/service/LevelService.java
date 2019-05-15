package service;

import java.util.List;

import pojo.Level;

public interface LevelService {

	public List<Level> queryLevelByType(int type);

	public List<Level> queryLevelByPid(int pid);
	
	public List<Level> queryLevel() ;
}
