package cn.MS.bean;

import java.util.Date;

/**
 * �����߷üƻ�����
 * @author Administrator
 *
 */
public class WebPlan {
	int id;  //id
	String planName;  //�ƻ�����
	Date designDate;  //�ƻ�����
	String webType;  //��������
	String designer;  //����������
	int userID;  
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
	public Date getDesignDate() {
		return designDate;
	}
	public void setDesignDate(Date designDate) {
		this.designDate = designDate;
	}
	public String getWebType() {
		return webType;
	}
	public void setWebType(String webType) {
		this.webType = webType;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
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
