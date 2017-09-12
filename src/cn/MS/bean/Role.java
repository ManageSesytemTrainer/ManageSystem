package cn.MS.bean;

public class Role {
	int id;
	String roleName;
	String description;
	int state;
	int roleLimit;
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
