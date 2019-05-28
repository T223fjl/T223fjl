package dao.realtimeinventory;


import pojo.Realtimeinventory;

public interface RealtimeinventoryDao {
	public Realtimeinventory queryRealtimeinventoryByHHid(Realtimeinventory r);
	public Realtimeinventory queryRealtimeinventoryNew();
	public int updRealtimeinventory(Realtimeinventory r);
	public int addRealtimeinventory(Realtimeinventory r);
}
