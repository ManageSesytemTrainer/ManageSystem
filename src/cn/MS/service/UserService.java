package cn.MS.service;

import cn.MS.bean.User;

public interface UserService {
	String getUser(int id);
	String getUser(String loginname);
	String getAllUser();
	String getActiveUser();
	void modifyUser(User user);
	void addUser(User user);
	String getUsersByDepartmentId(int departmentid);
	String getUsersByRoleId(int roleId);
}
