package pojo;

import java.util.Date;

public class Bill {
	private int id;
	private String billCode;
	private String productName;
	private String productDesc;
	private String productUnit;
	private double productCount;
	private double totalPrice;
	private int isPaymen;
	private int createdBy;
	private Date creationDate;
	private int modifyBy;
	private Date modifyDate;
	private int providerId;
	private String proName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBillCode() {
		return billCode;
	}
	public void setBillCode(String billCode) {
		this.billCode = billCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getProductUnit() {
		return productUnit;
	}
	public void setProductUnit(String productUnit) {
		this.productUnit = productUnit;
	}
	public double getProductCount() {
		return productCount;
	}
	public void setProductCount(double productCount) {
		this.productCount = productCount;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getIsPaymen() {
		return isPaymen;
	}
	public void setIsPayment(int isPaymen) {
		this.isPaymen = isPaymen;
	}
	public int getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public int getModifyBy() {
		return modifyBy;
	}
	public void setModifyBy(int modifyBy) {
		this.modifyBy = modifyBy;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	public int getProviderId() {
		return providerId;
	}
	public void setProviderId(int providerId) {
		this.providerId = providerId;
	}
	public String getProviderName() {
		return proName;
	}
	public void setProviderName(String proName) {
		this.proName = proName;
	}
}