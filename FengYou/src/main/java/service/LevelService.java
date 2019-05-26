package service;

import java.util.List;

import pojo.Hotel;
import pojo.Level;

public interface LevelService {

	public List<Level> queryLevelByType(int type);

	public List<Level> queryLevelByPid(int pid);
	
	public List<Level> queryLevel() ;
	
	public List<Level> queryByName();
	
	public List<Hotel> query( String hotel);
	
}
