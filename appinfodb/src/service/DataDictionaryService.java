package service;

import java.util.List;

import pojo.DataDictionary;

public interface DataDictionaryService {
	public List<DataDictionary> flatFormList();
	public List<DataDictionary> query();
	public List<DataDictionary> statusList();
}
