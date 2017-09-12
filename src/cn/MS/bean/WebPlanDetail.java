package cn.MS.bean;

import java.sql.*;

public class WebPlanDetail {
	int id;
	String name;
	String department;
	String duty;
	Date visitDate;
	Time visitTime;
	String visitAddress;
	int collection;
	int webPlanId;
	String remark;
	int userId;
	int userDepartment;
	int userRolePlan;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
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
	public String getVisitAddress() {
		return visitAddress;
	}
	public void setVisitAddress(String visitAddress) {
		this.visitAddress = visitAddress;
	}
	public int getCollection() {
		return collection;
	}
	public void setCollection(int collection) {
		this.collection = collection;
	}
	public int getWebPlanId() {
		return webPlanId;
	}
	public void setWebPlanId(int webPlanId) {
		this.webPlanId = webPlanId;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getUserDepartment() {
		return userDepartment;
	}
	public void setUserDepartment(int userDepartment) {
		this.userDepartment = userDepartment;
	}
	public int getUserRolePlan() {
		return userRolePlan;
	}
	public void setUserRolePlan(int userRolePlan) {
		this.userRolePlan = userRolePlan;
	}
}
