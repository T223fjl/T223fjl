package service;

import pojo.Realtimeinventory;

public interface RealtimeinventoryService {
	public Realtimeinventory queryRealtimeinventoryByHHid(Realtimeinventory r);
	public int updRealtimeinventory(Realtimeinventory r);
	public int addRealtimeinventory(Realtimeinventory r);
	public Realtimeinventory queryRealtimeinventoryNew();
}
