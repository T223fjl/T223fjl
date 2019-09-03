package dao.backend;

import org.apache.ibatis.annotations.Param;

import pojo.House;
import pojo.Rawstock;

public interface BackendRawstockDao {

	//新增库存
	public int addawstock(Rawstock rawstock);
	
	public Rawstock getlist(@Param(value = "houseId")Integer houseId);
	
	
	//根据id修改房间信息
	public int updateraw(Rawstock rawstock);
}
