package cn.MS.bean;

import java.util.*;
/**
 * 走访数据导入（需求说的要用excel导入数据）
 * @author Administrator
 *
 */
public class VisitData {
	int id;  //id
	Date visitDate;  //走访日期
	Date visitTime;  //走访时间
	String address;  //走访地点
	String visitPerson;  //走访人姓名
	String departmentName;  //走访人所属部门名称
	String roleName;  //所属角色（职务）名称
	String countPerson;  //纵享销客账号
	String details;  //走访内容
	User user;  //走访人
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
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
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

}
