package cn.MS.bean;

import java.util.Date;

/**
 * ���ϸ���Ա
 * @author Administrator
 *
 */
public class FailPerson {
	int id;  //id
	Date faildate; //ͨ������
	String description;  //����
	User user;  //���ϸ���Ա
	Department department;  //��������
	Role role;  //ְ�񣨽�ɫ��
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
