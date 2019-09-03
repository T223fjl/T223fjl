package service.backend;

import java.util.List;

import pojo.Level;

public interface BackendLevelService {

	/**
	 * 根据地址级别查询所有
	 * 
	 * @param type
	 * @return
	 */
	public List<Level> getLevetype1(int type);

	/**
	 * 通过父类id得到level集合
	 * 
	 * @param parentId
	 * @return
	 */
	public List<Level> queryLevelByPid(Integer parentId);

	/**
	 * 查询所有level
	 * 
	 * @return
	 */
	public List<Level> queryLevel();
}
