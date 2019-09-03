package service.developer.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.developer.DeveloperDictionarydateDao;
import pojo.Dictionarydate;
import service.developer.DeveloperDictionarydateService;

@Service
public class DeveloperDictionarydateServiceImpl implements DeveloperDictionarydateService {

	@Autowired
	private DeveloperDictionarydateDao dictionarydateDao;

	/**
	 * 通过typecode查询
	 * 
	 * @param typeCode
	 * @return
	 */
	public List<Dictionarydate> queryDictionarydateByTypeCode(String typeCode) {
		return dictionarydateDao.queryDictionarydateByTypeCode(typeCode);
	}

}
