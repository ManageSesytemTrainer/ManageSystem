package cn.MS.service.serviceIm;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.MS.bean.Role;
import cn.MS.dao.RoleMapper;
import cn.MS.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	private RoleMapper roleMapper;

	@Override
	public int addRole(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.addRole(role);
	}

	@Override
	public int deleteRole(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.deleteRole(role);
	}

	@Override
	public int updateRole(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.updateRole(role);
	}

	@Override
	public String selectAll() {
		// TODO Auto-generated method stub
		List<Role> list = roleMapper.selectAll();
		JSONArray array = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		int i = 0;
		if (list != null) {
			for (Role role : list) {
				i++;
				JSONObject ob = new JSONObject();
				ob.put("id", role.getId());
				ob.put("roleName", role.getRoleName());
				ob.put("description", role.getDescription());
				ob.put("state", role.getState());
				ob.put("roleLimit", role.getRoleLimit());
				array.put(ob);
			}
		}
		jsonObject.put("total", i);
		jsonObject.put("rows", array);

		return jsonObject.toString();
	}

	@Override
	public int cancelRole(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.cancelRole(role);
	}

	@Override
	public int activeRole(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.activeRole(role);
	}

	@Override
	public String selectRoleByName(String roleName) {
		// TODO Auto-generated method stub
		Role role = roleMapper.selectRoleByName(roleName);
		if(role != null) {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id", role.getId());
			jsonObject.put("roleName", role.getRoleName());
			jsonObject.put("description", role.getDescription());
			jsonObject.put("state", role.getState());
			jsonObject.put("roleLimit", role.getRoleLimit());
			return jsonObject.toString();
		}
		return null;
	}

	@Override
	public Role selectRoleById(int id) {
		return roleMapper.selectRoleById(id);
	}

}
