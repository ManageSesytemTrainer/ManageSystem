package cn.MS.service.serviceIm;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.MS.bean.User;
import cn.MS.dao.UserMapper;
import cn.MS.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper um;
	@Override
	public String getUser(int id) {
		return userToJson(um.getUserById(id));
	}
	@Override
	public String getUser(String loginname) {
		return userToJson(um.getUserByLoginname(loginname));
	}
	@Override
	public String getAllUser() {
		return listToJson(um.getAllUser());
	}
	@Override
	public String getActiveUser() {
		return listToJson(um.getAllActiveUser());
	}
	@Override
	public void modifyUser(User user) {
		um.modifyUserByid(user);
	}
	@Override
	public void addUser(User user) {
		um.addUser(user);
	}
	@Override
	public String getUsersByDepartmentId(int departmentid) {
		return listToJson(um.getUsersByDepartment(departmentid));
	}
	@Override
	public String getUsersByRoleId(int roleId) {
		return listToJson(um.getUsersByRole(roleId));
	}
	
	
	private String listToJson(List<User> list) {
		JSONArray array = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		int i=0;
		if (list != null) {
			for (User u : list) {
				i++;
				JSONObject ob = userToJO(u);
				array.put(ob);
			}
		}
		jsonObject.put("total", i);
		jsonObject.put("rows", array);
		return jsonObject.toString();
	}
	private String userToJson(User u) {
		JSONArray array = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		int i=0;
		if (u != null) {
			i++;
			JSONObject ob = userToJO(u);
			array.put(ob);
		}
		jsonObject.put("total", i);
		jsonObject.put("rows", array);

		return jsonObject.toString();
	}
	private JSONObject userToJO(User u) {
		JSONObject ob = new JSONObject();
		ob.put("id", u.getId());
		ob.put("job_number", u.getJobNumber());
		ob.put("loginname", u.getLoginName());
		ob.put("name", u.getName());
		ob.put("sex", u.getSex());
		ob.put("birthday", u.getBirthday());
		ob.put("phone", u.getPhone());
		ob.put("mobile_phone", u.getMobilePhone());
		ob.put("email", u.getEmail());
		ob.put("state", u.getState());
		ob.put("department_name", u.getDepartmentName());
		return ob;
	}
}
