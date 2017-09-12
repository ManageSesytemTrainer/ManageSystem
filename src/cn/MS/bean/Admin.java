package cn.MS.bean;
/**
 * 系统管理员
 * @author Administrator
 *
 */
public class Admin {
	int id;  //id
	String loginName;  //登录名
	String password;  //密码
	String name;  //真实姓名
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
