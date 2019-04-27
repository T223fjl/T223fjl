package dao.dataDictionary;

import java.util.List;

import pojo.DataDictionary;

public interface DataDictionaryDao {
	public List<DataDictionary> flatFormList();
	public List<DataDictionary> query();
}
