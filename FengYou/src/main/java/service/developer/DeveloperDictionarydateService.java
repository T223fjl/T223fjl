package service.developer;

import java.util.List;

import pojo.Dictionarydate;

public interface DeveloperDictionarydateService {

	/**
	 * 通过typecode查询
	 * 
	 * @param typeCode
	 * @return
	 */
	public List<Dictionarydate> queryDictionarydateByTypeCode(String typeCode);
}
