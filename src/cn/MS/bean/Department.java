package cn.MS.bean;
/**
 * ����
 * @author Administrator
 *
 */
public class Department {
	int id;  //id
	String departmentName;  //��������
	String phone;  //��ϵ�绰
	int state;  //����״̬���Ƿ񼤻
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
