package cn.MS.bean;

import java.util.Date;

/**
 * �����߷üƻ�����
 * @author Administrator
 *
 */
public class WebPlan {
	Integer id;  //id
	String planName;  //�ƻ�����
	Date planDateStart;  //�ƻ���ʼʱ��
	Date planDateEnd;  //�ƻ�����ʱ��
	Date designDate;  //�ƻ���������
	String webType;  //��������
	String designer;  //����������
	User user;  //������  
	int state; //״̬
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPlanName() {
		return planName;
	}
	public void setPlanName(String planName) {
		this.planName = planName;
	}
	public String getWebType() {
		return webType;
	}
	public void setWebType(String webType) {
		this.webType = webType;
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
	public String getDesigner() {
		return designer;
	}
	public void setDesigner(String designer) {
		this.designer = designer;
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
	public Date getDesignDate() {
		return designDate;
	}
	public void setDesignDate(Date designDate) {
		this.designDate = designDate;
	}
	
}
