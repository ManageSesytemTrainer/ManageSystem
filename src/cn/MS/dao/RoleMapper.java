package cn.MS.dao;

import java.util.List;

import cn.MS.bean.Role;

public interface RoleMapper {
	int addRole(Role role);
	int deleteRole(Role role);
	int updateRole(Role role);
	List<Role> selectAll();
	Role selectRoleByName(String roleName);
	Role selectRoleById(int id);
	int cancelRole(Role role);
	int activeRole(Role role);
}
