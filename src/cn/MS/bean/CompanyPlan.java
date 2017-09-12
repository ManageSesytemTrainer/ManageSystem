package cn.MS.bean;

import java.sql.Date;

public class CompanyPlan {
	int id;
	String planName;
	Date planDateStart;
	Date planDateEnd;
	Date designDate;
	String designer;
	String webType;
	String season;
	int personTimes;
	int totalTimes;
	int personCollections;
	String remark;
	int userId;
	int userDepartmentId;
	int userRoleId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPlanName() {
		return planName;
	}
	public void setPlanName(String planName) {
		this.planName = planName;
	}
	public Date getPlanDateStart() {
		return planDateStart;
	}
	public void setPlanDateStart(Date planDateStart) {
		this.planDateStart = planDateStart;
	}
	public Date getPlanDateEnd() {
		return planDateEnd;
	}
	public void setPlanDateEnd(Date planDateEnd) {
		this.planDateEnd = planDateEnd;
	}
	public Date getDesignDate() {
		return designDate;
	}
	public void setDesignDate(Date designDate) {
		this.designDate = designDate;
	}
	public String getDesigner() {
		return designer;
	}
	public void setDesigner(String designer) {
		this.designer = designer;
	}
	public String getWebType() {
		return webType;
	}
	public void setWebType(String webType) {
		this.webType = webType;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public int getPersonTimes() {
		return personTimes;
	}
	public void setPersonTimes(int personTimes) {
		this.personTimes = personTimes;
	}
	public int getTotalTimes() {
		return totalTimes;
	}
	public void setTotalTimes(int totalTimes) {
		this.totalTimes = totalTimes;
	}
	public int getPersonCollections() {
		return personCollections;
	}
	public void setPersonCollections(int personCollections) {
		this.personCollections = personCollections;
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
