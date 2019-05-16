package service;

import java.util.List;

import pojo.Dictionarydate;

public interface DictionarydateService {
	
	public List<Dictionarydate> queryDictionarydateByTypeCode(String typeCode);
}
