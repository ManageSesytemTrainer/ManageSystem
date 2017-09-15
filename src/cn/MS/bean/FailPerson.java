package cn.MS.bean;

import java.util.Date;

/**
 * 不合格人员
 * @author Administrator
 *
 */
public class FailPerson {
	int id;  //id
	Date faildate; //通报日期
	String description;  //描述
	User user;  //不合格人员
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getFaildate() {
		return faildate;
	}
	public void setFaildate(Date faildate) {
		this.faildate = faildate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
