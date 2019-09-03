package service.backend;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.House;

public interface BackendHouseService {

	/**
	 * 查询所有房间信息
	 * 
	 * @return
	 */
	public List<House> queryhouse();
	
	//新增房间信息
	 public int addorder(House house);
	 
	 //查看房间信息
	 public House gethouseByid(@Param(value = "id")Integer id);
	 public House gethouseByID(@Param(value = "houseId")Integer houseId);
	 
		/**
		 * 删除酒店信息
		 * 
		 * @param id
		 * @return
		 */
		public int delete(Integer id);

		/**
		 * 批量删除
		 * 
		 * @param ids
		 * @return
		 */
		public int delhouses(@Param("ids") String[] ids);
		
		//修改房间信息
		public int updatehouse(House house);
		
		/**
		 * 得到最新的房间信息
		 * 
		 * @return
		 */
		public House getHouseNew();
}
