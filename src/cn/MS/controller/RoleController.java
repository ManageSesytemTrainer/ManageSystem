package cn.MS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.MS.bean.Role;
import cn.MS.service.RoleService;

@Controller
public class RoleController {

	@Autowired
	RoleService roleService;

	@RequestMapping("/role_addRole")
	@ResponseBody
	public String addRole(Role role) throws Exception {
		if (roleService.selectRoleByName(role.getRoleName()) != null) {
			return "User is already exists !!!";
		} else {
			roleService.addRole(role);
			return "SUCCESS";
		}
	}

	@RequestMapping("/role_deleteRole")
	@ResponseBody
	public String deleteRole(Role role) throws Exception {
		if (roleService.deleteRole(role) != 0) {
			return "SUCCESS";
		}
		return "FAIL";
	}

	@RequestMapping("/role_updateRole")
	@ResponseBody
	public String updateRole(Role role) throws Exception {
		if (roleService.updateRole(role) != 0) {
			return "SUCCESS";
		}
		return "FAIL";
	}

	@RequestMapping("/role_selectAll")
	@ResponseBody
	public String selectAll() throws Exception {
		return roleService.selectAll();
	}

	@RequestMapping("/role_selectRoleByName")
	@ResponseBody
	public String selectRoleByName(String roleName) throws Exception {
		return roleService.selectRoleByName(roleName);
	}

	@RequestMapping("/role_cancelRole")
	@ResponseBody
	public String cancelRole(Role role) throws Exception {
		if (roleService.cancelRole(role) != 0) {
			return "SUCCESS";
		}
		return "FAIL";
	}

	@RequestMapping("/role_activeRole")
	@ResponseBody
	public String activeRole(Role role) throws Exception {
		if (roleService.activeRole(role) != 0) {
			return "SUCCESS";
		}
		return "FAIL";
	}
	
	@RequestMapping("/role_addPower")
	@ResponseBody
	public String addPower(int id,int roleLimit) {
		Role role = roleService.selectRoleById(id);
		if(role == null) {
			return "FAIL";
		}
		role.setRoleLimit(roleLimit);
		if(roleService.updateRole(role) != 0){
			return "SUCCESS";
		}
		return "FAIL";
	}
}
