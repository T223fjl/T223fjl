package pojo;

import java.util.Date;
/**
 * 旅客表
 * @author Administrator
 *
 */
public class Itrip {
	private int id;//主键
	private String linkUserName;//常用联系人姓名
	private String linkIdCard;//证件号码
	private String linkPhone;//常用联系人电话
	private int userId;//用户id
	private Date creationDate;//创建时间
	private int createdBy;//创建人
	private Date modifyDate;//修改时间
	private int modifiedBy;//修改人
	private int linkIdCardType;//证件类型：(0-身份证，1-护照，2-学生证，3-军人证，4-驾驶证，5-旅行证   
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLinkUserName() {
		return linkUserName;
	}
	public void setLinkUserName(String linkUserName) {
		this.linkUserName = linkUserName;
	}
	public String getLinkIdCard() {
		return linkIdCard;
	}
	public void setLinkIdCard(String linkIdCard) {
		this.linkIdCard = linkIdCard;
	}
	public String getLinkPhone() {
		return linkPhone;
	}
	public void setLinkPhone(String linkPhone) {
		this.linkPhone = linkPhone;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public int getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	public int getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(int modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	public int getLinkIdCardType() {
		return linkIdCardType;
	}
	public void setLinkIdCardType(int linkIdCardType) {
		this.linkIdCardType = linkIdCardType;
	}
	
	
	
}
