package cn.MS.bean;

import java.sql.*;

public class VisitData {
	int id;
	Date visitDate;
	Time visitTime;
	String address;
	String visitPerson;
	String departmentName;
	String releName;
	String countPerson;
	int userId;
	int userDepartmentId;
	int userRoleId;
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
	public Time getVisitTime() {
		return visitTime;
	}
	public void setVisitTime(Time visitTime) {
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
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getUserDepartmentId() {
		return userDepartmentId;
	}
	public void setUserDepartmentId(int userDepartmentId) {
		this.userDepartmentId = userDepartmentId;
	}
	public int getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}
}
