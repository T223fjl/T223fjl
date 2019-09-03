package service.backend;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Dictionarydate;

public interface BackendDictionarydateService {

	/**
	 * 通过分类查询
	 * 
	 * @param typeCode
	 * @return
	 */
	public List<Dictionarydate> queryDictionarydateByTypeCode(String typeCode);

	/**
	 * 查询所有字典表
	 * 
	 * @return
	 */
	public List<Dictionarydate> queryDictionarydate();

	/**
	 * 查询字典表分类
	 * 
	 * @return
	 */
	public List<Dictionarydate> queryDictionarydateSfl();

	/**
	 * 条件查询
	 * 
	 * @param typeCode
	 * @param info
	 * @return
	 */
	public List<Dictionarydate> queryDictionarydateByCody(@Param("typeCode") String typeCode,
			@Param("info") String info);

	/**
	 * 查询总记录数
	 * 
	 * @param typeCode
	 * @param info
	 * @return
	 * @throws Exception
	 */
	public int getCount(@Param("typeCode") String typeCode, @Param("info") String info) throws Exception;

	/**
	 * 删除字典
	 * 
	 * @param id
	 * @return
	 */
	public int deleteByid(int id);

	/**
	 * 新增字典
	 * 
	 * @param typeCode
	 * @param dictCode
	 * @param info
	 * @param typeName
	 * @return
	 */
	public int add(@Param("typeCode") String typeCode, @Param("dictCode") int dictCode, @Param("info") String info,
			@Param("typeName") String typeName);

	/**
	 * 根据typeCode查出星级
	 * 
	 * @param typeCode
	 * @return
	 */
	public List<Dictionarydate> getTypeCode(String typeCode);

	/**
	 * 根据Id查询字典表
	 * 
	 * @param id
	 * @return
	 */
	public Dictionarydate getdicByid(@Param(value = "id") Integer id);

	/**
	 * 根据id修改字典表
	 * 
	 * @param dictionarydate
	 * @return
	 */
	public int update(Dictionarydate dictionarydate);
}
