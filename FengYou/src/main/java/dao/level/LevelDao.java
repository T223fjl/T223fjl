package dao.level;

import java.util.List;

import pojo.Level;

public interface LevelDao {
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
}
