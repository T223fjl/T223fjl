package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.bill.BillDao;
import pojo.Bill;
@Service("billService")
public class BillServiceImpl implements BillService {
	@Autowired
	private BillDao billDao;

	
	public List<Bill> queryBill() {
		return billDao.queryBill();
	}

	@Override
	public int addBill(Bill bill) {
		return billDao.addBill(bill);
	}
	public Bill queryByBillId(@Param("id") int id){
		return billDao.queryByBillId(id);
	}
	public List<Bill> queryBillByName(@Param("productName") String productName,
			@Param("providerId") int providerId,
			@Param("isPaymen") int isPaymen,
			@Param("curPage") int curPage,
			@Param("pageSize") int pageSize
			){
		return billDao.queryBillByName(productName, providerId,isPaymen,curPage,pageSize);
	}

	@Override
	public int updateBill(Bill bill) {
		return billDao.updateBill(bill);
	}

	@Override
	public int queryBillByNameCount(String productName, int providerId, int isPaymen, int curPage, int pageSize) {
		return billDao.queryBillByNameCount(productName, providerId, isPaymen, curPage, pageSize);
	}

	@Override
	public int deleteBill(int id) {
		return billDao.deleteBill(id);
	}
}
