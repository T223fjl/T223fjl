package pojo;
/**
 * 字典表
 * @author Administrator
 *
 */
public class dictionarydate {
	private int id;               //字典id
	private String typeCode;      //配置项英文意思
	private int dictCode;         //业务代码编号
	private String info;         //配置项名称
	private String typeName;     //配置项中文意思
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTypeCode() {
		return typeCode;
	}
	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}
	public int getDictCode() {
		return dictCode;
	}
	public void setDictCode(int dictCode) {
		this.dictCode = dictCode;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	

}
