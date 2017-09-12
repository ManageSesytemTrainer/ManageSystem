package cn.MS.bean;

import java.util.Date;

/**
 * 不合格人员
 * @author Administrator
 *
 */
public class FailPerson {
	int id;  //id
	Date faildate; //通报日期
	String description;  //描述
	User user;  //不合格人员
	Department department;  //所属部门
	Role role;  //职务（角色）
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getFaildate() {
		return faildate;
	}
	public void setFaildate(Date faildate) {
		this.faildate = faildate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}

}
