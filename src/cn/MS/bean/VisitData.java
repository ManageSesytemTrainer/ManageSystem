package cn.MS.bean;

import java.util.*;
/**
 * �߷����ݵ��루����˵��Ҫ��excel�������ݣ�
 * @author Administrator
 *
 */
public class VisitData {
	int id;  //id
	Date visitDate;  //�߷�����
	Date visitTime;  //�߷�ʱ��
	String address;  //�߷õص�
	String visitPerson;  //�߷�������
	String departmentName;  //�߷���������������
	String releName;  //������ɫ��ְ������
	String countPerson;  //���������˺�
	String details;  //�߷�����
	User user;  //�߷���
	Department department;  //��������
	Role role;  //ְ��
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(Date visitDate) {
		this.visitDate = visitDate;
	}
	public Date getVisitTime() {
		return visitTime;
	}
	public void setVisitTime(Date visitTime) {
		this.visitTime = visitTime;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getVisitPerson() {
		return visitPerson;
	}
	public void setVisitPerson(String visitPerson) {
		this.visitPerson = visitPerson;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getReleName() {
		return releName;
	}
	public void setReleName(String releName) {
		this.releName = releName;
	}
	public String getCountPerson() {
		return countPerson;
	}
	public void setCountPerson(String countPerson) {
		this.countPerson = countPerson;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
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
