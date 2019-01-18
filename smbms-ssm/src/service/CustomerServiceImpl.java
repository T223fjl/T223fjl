package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.customer.CustomerDao;
import pojo.Customer;
@Service("customerService")
public class CustomerServiceImpl implements  CustomerService{

	@Autowired
	public CustomerDao customerDao;
	
	@Override
	public int queryCount(String name) {
		return customerDao.queryCount(name);
	}

	@Override
	public List<Customer> queryCustomer(String name, int from, int pageSize) {
		return customerDao.queryCustomer(name, from, pageSize);
	}

	@Override
	public int delete(int id) {
		return customerDao.delete(id);
	}

	


}
