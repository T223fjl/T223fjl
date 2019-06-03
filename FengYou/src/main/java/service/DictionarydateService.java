package service;

import java.util.List;

import pojo.Dictionarydate;

public interface DictionarydateService {
	
	/**
	 * 通过typecode查询
	 * @param typeCode
	 * @return
	 */
	public List<Dictionarydate> queryDictionarydateByTypeCode(String typeCode);
}
