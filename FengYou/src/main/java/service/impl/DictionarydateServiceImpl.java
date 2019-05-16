package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.dictionarydate.DictionarydateDao;
import pojo.Dictionarydate;
import service.DictionarydateService;
@Service
public class DictionarydateServiceImpl implements DictionarydateService{

	@Autowired
	private DictionarydateDao dictionarydateDao;
	
	public List<Dictionarydate> queryDictionarydateByTypeCode(String typeCode) {
		return dictionarydateDao.queryDictionarydateByTypeCode(typeCode);
	}
	
}
