package service.backend.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.backend.BackendDictionarydateDao;
import pojo.Dictionarydate;
import service.backend.BackendDictionarydateService;

@Service
public class BackendDictionarydateServiceImpl implements BackendDictionarydateService {

	@Autowired
	private BackendDictionarydateDao dictionarydateDao;

	/**
	 * 通过分类查询
	 */
	public List<Dictionarydate> queryDictionarydateByTypeCode(String typeCode) {
		return dictionarydateDao.queryDictionarydateByTypeCode(typeCode);
	}

	/**
	 * 查询所有字典表
	 */
	public List<Dictionarydate> queryDictionarydate() {
		return dictionarydateDao.queryDictionarydate();
	}

	/**
	 * 查询字典表分类
	 */
	public List<Dictionarydate> queryDictionarydateSfl() {
		return dictionarydateDao.queryDictionarydateSfl();
	}

	/**
	 * 条件查询
	 */
	public List<Dictionarydate> queryDictionarydateByCody(String typeCode, String info) {
		return dictionarydateDao.queryDictionarydateByCody(typeCode, info);
	}

	/**
	 * 删除字典
	 */
	public int deleteByid(int id) {
		return dictionarydateDao.deleteByid(id);
	}

	/**
	 * 新增字典
	 */
	public int add(String typeCode, int dictCode, String info, String typeName) {
		return dictionarydateDao.add(typeCode, dictCode, info, typeName);
	}

	/**
	 * 根据typeCode查出星级
	 */
	public List<Dictionarydate> getTypeCode(String typeCode) {
		return dictionarydateDao.getTypeCode(typeCode);
	}

	/**
	 * 查询总记录数
	 */
	public int getCount(String typeCode, String info) throws Exception {
		return dictionarydateDao.getCount(typeCode, info);
	}

	/**
	 * 根据Id查询字典表
	 */
	public Dictionarydate getdicByid(Integer id) {
		return dictionarydateDao.getdicByid(id);
	}

	/**
	 * 根据id修改字典表
	 */
	public int update(Dictionarydate dictionarydate) {
		return dictionarydateDao.update(dictionarydate);
	}

}
