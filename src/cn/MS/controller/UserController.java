package cn.MS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.MS.bean.User;
import cn.MS.service.UserService;
/**
 * 没有考虑权限问题
 * @author wan-ls
 *
 */
@Controller
public class UserController {
	@Autowired
	private UserService us;
	
	@RequestMapping("/user_queryActiveUser")
	@ResponseBody
	public String queryActiveUser() {
		String users = us.getActiveUser();
		if(users == null) {
			return "ERROR";
		}
		return users;
	}
	@RequestMapping("/user_queryWriteoffUser")
	@ResponseBody
	public String queryWriteoffUser() {
		String users = us.getWriteoffUser();
		if(null == users)
			return "ERROR";
		return users;
	}
	@RequestMapping("/user_queryAllUser")
	@ResponseBody
	public String queryAllUser() {
		String users = us.getAllUser();
		if(null == users)
			return "ERROR";
		return users;
	}
	@RequestMapping("/user_queryUser")
	@ResponseBody
	public String queryUser(int id) {
		String user = us.getUser(id);
		if(null == user)
			return "ERROR";
		return user;
	}
	@RequestMapping("/user_updateUser")
	@ResponseBody
	public String updateUser(User u) {
		if(us.modifyUser(u) <= 0)
			return "ERROR";
		return "SUCCESS";
	}
	@RequestMapping("/user_insertUser")
	@ResponseBody
	public String insertUser(User u) {
		if(0 <= us.addUser(u))
			return "ERROR";
		return "SUCCESS";
	}
	@RequestMapping("/user_queryUsersByDepartmentId")
	@ResponseBody
	public String queryUsersByDepartmentId(int id) {
		String users = us.getUsersByDepartmentId(id);
		if(null == users)
			return "ERROR";
		return users;
	}
	@RequestMapping("/user_queryUsersByRoleId")
	@ResponseBody	
	public String queryUsersByRoleId(int id) {
		String users = us.getUsersByRoleId(id);
		if(null == users)
			return "ERROR";
		return users;
	}
	@RequestMapping("/user_queryDepartmentByUserId")
	@ResponseBody
	public String queryDepartmentByUserId(int id) {
		String dep = us.getDepartmentByUserId(id);
		if(null == dep)
			return "ERROR";
		return dep;
	}
	@RequestMapping("/user_queryRoleByUserId")
	@ResponseBody
	public String queryRoleByUserId(int id) {
		String role = us.getRoleByUserId(id);
		if(null == role)
			return "ERROR";
		return role;
	}
}
