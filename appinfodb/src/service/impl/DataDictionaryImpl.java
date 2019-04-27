package service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.dataDictionary.DataDictionaryDao;
import pojo.DataDictionary;
import service.DataDictionaryService;
@Service("dataDictionaryService")
public class DataDictionaryImpl implements DataDictionaryService{
	@Autowired
	private DataDictionaryDao dataDictionaryDao;
	
	public List<DataDictionary> flatFormList(){
		return dataDictionaryDao.flatFormList();
	}

	@Override
	public List<DataDictionary> query() {
		return dataDictionaryDao.query();
	}

	@Override
	public List<DataDictionary> statusList() {
		List<DataDictionary> statusList=new ArrayList<DataDictionary>();
		List<DataDictionary> dlist =query();
		for (int i = 0; i < dlist.size(); i++) {
			if(dlist.get(i).getTypeName().equals("APP״̬")){
				statusList.add(dlist.get(i));
			}
		}
		return statusList;
	}
}
