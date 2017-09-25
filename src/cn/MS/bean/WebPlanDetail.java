package cn.MS.bean;

import java.util.*;
/**
 * 网点计划明细
 * @author Administrator
 *
 */
public class WebPlanDetail {
	Integer id;  //id
	String name;  //计划名称
	String departmentName;  //编制人所在部门
	String duty;  //编制人职务
	Date visitDate;  //走访日期
	Date visitTime;  //走访时间
	String visitAddress;  //走访地址
	int collection;  //搜集信息数
	String remark;  //备注
	WebPlan webPlan;  //所属网点计划  
	User user;  //编制人
	int state; //状态״̬
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartment() {
		return departmentName;
	}
	public void setDepartment(String departmentName) {
		this.departmentName = departmentName;
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
	public Date getVisitTime() {
		return visitTime;
	}
	public void setVisitTime(Date visitTime) {
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
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public WebPlan getWebPlan() {
		return webPlan;
	}
	public void setWebPlan(WebPlan webPlan) {
		this.webPlan = webPlan;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}

}
