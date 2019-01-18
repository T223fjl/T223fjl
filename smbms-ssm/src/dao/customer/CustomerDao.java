package dao.customer;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Customer;

public interface CustomerDao {
	public List<Customer> queryCustomer(@Param("name")String name,
			@Param("from")int from,
			@Param("pageSize")int pageSize);
	
	public int queryCount(@Param("name")String name);
	public int delete(@Param("id")int id);
}
