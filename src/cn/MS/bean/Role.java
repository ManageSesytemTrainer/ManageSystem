package cn.MS.bean;
/**
 * ��ɫ��ְ��
 * @author Administrator
 *
 */
public class Role {
	int id;  //id
	String roleName;  //��ɫ����
	String description;  //��ɫ����
	int state;  //״̬���Ƿ񼤻
	int roleLimit;  //��ɫȨ��
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getRoleLimit() {
		return roleLimit;
	}
	public void setRoleLimit(int roleLimit) {
		this.roleLimit = roleLimit;
	}
}
