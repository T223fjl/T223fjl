package dao.dictionarydate;

import java.util.List;

import pojo.Dictionarydate;

public interface DictionarydateDao {
	/**
	 * 通过typecode查询
	 * @param typeCode
	 * @return
	 */
	public List<Dictionarydate> queryDictionarydateByTypeCode(String typeCode);
}
