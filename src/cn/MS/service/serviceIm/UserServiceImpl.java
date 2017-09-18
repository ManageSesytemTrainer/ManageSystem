package cn.MS.service.serviceIm;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.MS.bean.Department;
import cn.MS.bean.Role;
import cn.MS.bean.User;
import cn.MS.dao.UserMapper;
import cn.MS.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper um;
	@Override
	public String getDepartmentByUserId(int id) {
		User u = um.getUserById(id);
		return objectToJson(u.getDepartment(), Department.class);
	}
	@Override
	public String getRoleByUserId(int id) {
		User u = um.getUserById(id);
		return objectToJson(u.getRole(), Role.class);
	}
	@Override
	public String getUser(int id) {
		return objectToJson(um.getUserById(id), User.class);
	}
	@Override
	public String getUser(String loginname) {
		return objectToJson(um.getUserByLoginname(loginname), User.class);
	}
	@Override
	public String getAllUser() {
		return listToJson(um.getAllUser(), User.class);
	}
	@Override
	public String getActiveUser() {
		return listToJson(um.getAllActiveUser(), User.class);
	}
	@Override
	public int modifyUser(User user) {
		return um.modifyUserByid(user);
	}
	@Override
	public int addUser(User user) {
		return um.addUser(user);
	}
	@Override
	public String getUsersByDepartmentId(int departmentid) {
		return listToJson(um.getUsersByDepartment(departmentid), User.class);
	}
	@Override
	public String getUsersByRoleId(int roleId) {
		return listToJson(um.getUsersByRole(roleId), User.class);
	}
	@Override
	public String getWriteoffUser() {
		return listToJson(um.getAllWriteoffUser(), User.class);
	}
	
	
	/**
	 * ��list��װ��json
	 * @param list
	 * @return
	 */
	private String listToJson(List<?> list, Class<?> c) {
		JSONArray array = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		int i=0;
		if (list != null) {
			for (Object u : list) {
				i++;
				JSONObject ob = objectToJO(u, c);
				array.put(ob);
			}
		}else {
			return null;
		}
		jsonObject.put("total", i);
		jsonObject.put("rows", array);
		return jsonObject.toString();
	}
	private String objectToJson(Object u, Class<?> c) {
		JSONArray array = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		int i=0;
		if (u != null) {
			i++;
			JSONObject ob = objectToJO(u, c);
			array.put(ob);
		}else {
			return null;
		}
		jsonObject.put("total", i);
		jsonObject.put("rows", array);

		return jsonObject.toString();
	}
	private JSONObject objectToJO(Object obj, Class<?> c) {
		JSONObject ob = new JSONObject();
		try {
			Object o = c.newInstance();
			o = obj;
			Field[] fields = c.getDeclaredFields();
			for(int i = 0; i < fields.length; i++) {
				if(!fields[i].getType().toString().startsWith("class cn.MS.bean.") ) {
					fields[i].setAccessible(true);
					String name = fields[i].getName();
					Method method = c.getMethod("get" + name.substring(0,1).toUpperCase() + name.substring(1));
					ob.put(name, method.invoke(o));
				}
			}
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return ob;
	}
}