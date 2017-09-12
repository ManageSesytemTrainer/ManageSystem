package cn.MS.bean;
/**
 * 部门
 * @author Administrator
 *
 */
public class Department {
	int id;  //id
	String departmentName;  //部门名称
	String phone;  //联系电话
	int state;  //部门状态（是否激活）
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
}
