package pojo;

import java.util.Date;

/**
 * 临时库存表：
 * 
 * @author Administrator
 *
 */
public class Realtimeinventory {
	private int id; // 临时库存id
	private int hotelId;// 酒店id
	private int houseId;// 房型id
	private Date recordDate;// 记录日期
	private Date recordStopDate;// 退房日期
	private int store;// 库存

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public int getHouseId() {
		return houseId;
	}

	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}

	public Date getRecordDate() {
		return recordDate;
	}

	public void setRecordDate(Date recordDate) {
		this.recordDate = recordDate;
	}

	public Date getRecordStopDate() {
		return recordStopDate;
	}

	public void setRecordStopDate(Date recordStopDate) {
		this.recordStopDate = recordStopDate;
	}

	public int getStore() {
		return store;
	}

	public void setStore(int store) {
		this.store = store;
	}
}
