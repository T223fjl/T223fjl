package service;

import java.util.List;

import pojo.Level;

public interface LevelService {
	/**
	 * 通过type得到level集合
	 * @param type
	 * @return
	 */
	public List<Level> queryLevelByType(int type);
	
	/**
	 * 通过父类id得到level集合
	 * @param pid
	 * @return
	 */
	public List<Level> queryLevelByPid(int pid);
	
	/**
	 * 查询所有level
	 * @param pid
	 * @return
	 */
	public List<Level> queryLevel();
	
	/**
	 * 模糊查询后面是市的所有城市
	 * @return
	 */
	public List<Level> queryByName();
	
}
