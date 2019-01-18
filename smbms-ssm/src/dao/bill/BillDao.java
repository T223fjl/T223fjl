package dao.bill;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Bill;

public interface BillDao {
	public int deleteBill(@Param("id") int id);
	public int updateBill(Bill bill);
	public List<Bill> queryBill();
	public int addBill(Bill bill);
	public Bill queryByBillId(@Param("id") int id);
	public List<Bill> queryBillByName(@Param("productName") String productName,
			@Param("providerId") int providerId,
			@Param("isPaymen") int isPaymen,
			@Param("curPage") int curPage,
			@Param("pageSize") int pageSize
			);
	public int queryBillByNameCount(@Param("productName") String productName,
			@Param("providerId") int providerId,
			@Param("isPaymen") int isPaymen,
			@Param("curPage") int curPage,
			@Param("pageSize") int pageSize
			);
}
