package pojo;

import java.util.Date;
import java.util.List;

/**
 * 
 * @author Administrator 房型表：
 */
public class House {
	private int houseId; // 房型ID
	private int hotelId;// 酒店id外键
	private String houseType;// 房间床型
	private Double housePrice;// 房间价格
	private int isHavingBreakfast;// 是否有早餐
	private String contentOne;// 房间设施
	private String contentTow;// 媒体科技
	private String contentThree;// 食品饮品
	private String contentFour;// 浴室
	private String contentFive;// 室外景观
	private int houseCountByType;// 每个类型的房间数量
	private Date creationDate;
	private String productName;
	private String supplier;
	private String productPolicy;
	
	private List<House> houseListByType;//每个类型的房间集合
	
	public List<House> getHouseListByType() {
		return houseListByType;
	}

	public void setHouseListByType(List<House> houseListByType) {
		this.houseListByType = houseListByType;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public String getProductPolicy() {
		return productPolicy;
	}

	public void setProductPolicy(String productPolicy) {
		this.productPolicy = productPolicy;
	}

	
	public int getHouseCountByType() {
		return houseCountByType;
	}

	public void setHouseCountByType(int houseCountByType) {
		this.houseCountByType = houseCountByType;
	}

	public int getHouseId() {
		return houseId;
	}

	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getHouseType() {
		return houseType;
	}

	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}

	public Double getHousePrice() {
		return housePrice;
	}

	public void setHousePrice(Double housePrice) {
		this.housePrice = housePrice;
	}

	public int getIsHavingBreakfast() {
		return isHavingBreakfast;
	}

	public void setIsHavingBreakfast(int isHavingBreakfast) {
		this.isHavingBreakfast = isHavingBreakfast;
	}

	public String getContentOne() {
		return contentOne;
	}

	public void setContentOne(String contentOne) {
		this.contentOne = contentOne;
	}

	public String getContentTow() {
		return contentTow;
	}

	public void setContentTow(String contentTow) {
		this.contentTow = contentTow;
	}

	public String getContentThree() {
		return contentThree;
	}

	public void setContentThree(String contentThree) {
		this.contentThree = contentThree;
	}

	public String getContentFour() {
		return contentFour;
	}

	public void setContentFour(String contentFour) {
		this.contentFour = contentFour;
	}

	public String getContentFive() {
		return contentFive;
	}

	public void setContentFive(String contentFive) {
		this.contentFive = contentFive;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

}
