package cn.MS.bean;
/**
 * 角色（职务）
 * @author Administrator
 *
 */
public class Role {
	int id;  //id
	String roleName;  //角色名称
	String description;  //角色描述
	int state;  //状态（是否激活）
	int roleLimit;  //角色权限
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
