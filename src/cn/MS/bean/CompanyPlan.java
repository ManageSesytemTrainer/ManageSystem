package cn.MS.bean;

import java.util.Date;

/**
 * 县分公司走访计划
 * @author Administrator
 *
 */
public class CompanyPlan {
	int id;  //id
	String planName;  //计划名
	Date planDateStart;  //计划开始时间
	Date planDateEnd;  //计划结束时间
	Date designDate;  //编制日期
	String designer;  //编制人姓名
	String webType;  //网点类型
	String season;  //季节
	int personTimes;  //每人每月最少走访次数
	int totalTimes;  //合计最少次数
	int personCollections;  //每人每月最少收集的信息数
	String remark;  //备注
	User user;  //编制人
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
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
