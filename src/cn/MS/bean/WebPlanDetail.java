package cn.MS.bean;

import java.util.*;
/**
 * �����߷üƻ���ϸ����
 * @author Administrator
 *
 */
public class WebPlanDetail {
	int id;  //id
	String name;  //Ա������
	String departmentName;  //������������
	String duty;  //ְ�񣨽�ɫ������
	Date visitDate;  //�߷�����
	Date visitTime;  //�߷�ʱ��
	String visitAddress;  //�߷õص�
	int collection;  //�Ѽ���Ϣ��
	String remark;  //��ע
	WebPlan webPlan;  //����ƻ�  
	User user;  //Ա��
	int state; //״̬
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
