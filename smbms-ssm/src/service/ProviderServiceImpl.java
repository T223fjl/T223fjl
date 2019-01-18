package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.provider.ProviderDao;
import pojo.Provider;
@Service("providerService")
public class ProviderServiceImpl implements ProviderService{
	@Autowired
	private ProviderDao providerDao;
	@Override
	public List<Provider> queryProvider() {
		return providerDao.queryProvider();
	}

}
