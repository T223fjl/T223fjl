package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CityDao;
import pojo.City;
import service.CityService;
@Service
public class CityServiceImpl implements CityService{

	@Autowired
	private CityDao cityDao;
	
	public List<City> query() {
		return cityDao.query();
	}

}
