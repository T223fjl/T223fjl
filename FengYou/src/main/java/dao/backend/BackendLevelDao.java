package dao.backend;

import java.util.List;

import pojo.Level;

public interface BackendLevelDao {

	/**
	 * 通过type得到level集合
	 * 
	 * @param type
	 * @return
	 */
	public List<Level> queryLevelByType(int type);

	/**
	 * 通过父类id得到level集合
	 * 
	 * @param pid
	 * @return
	 */
	public List<Level> queryLevelByPid(int parentId);

	/**
	 * 查询所有level
	 * 
	 * @param pid
	 * @return
	 */
	public List<Level> queryLevel();

	/**
	 * 根据地址级别查询所有
	 * 
	 * @param type
	 * @return
	 */
	public List<Level> getLevetype1(int type);
}
