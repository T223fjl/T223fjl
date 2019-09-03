package dao.developer;

import java.util.List;

import pojo.Dictionarydate;

public interface DeveloperDictionarydateDao {

	/**
	 * 通过typecode查询
	 * 
	 * @param typeCode
	 * @return
	 */
	public List<Dictionarydate> queryDictionarydateByTypeCode(String typeCode);
}
