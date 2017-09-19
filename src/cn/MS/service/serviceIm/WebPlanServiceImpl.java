package cn.MS.service.serviceIm;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.MS.bean.WebPlan;
import cn.MS.dao.WebPlanMapper;
import cn.MS.service.WebPlanService;

@Service("webPlanService")
public class WebPlanServiceImpl implements WebPlanService{
	@Autowired
	WebPlanMapper wpm;

	@Override
	public int add(WebPlan wp) {
		return wpm.addWebPlan(wp);
	}

	@Override
	public int update(WebPlan wp) {
		return wpm.updateWebPlan(wp);
	}

	@Override
	public String getById(int id) {
		return objectToJson(wpm.getWebPlanById(id), WebPlan.class);
	}
	
	@Override
	public WebPlan getObjectById(int id) {
		return wpm.getWebPlanById(id);
	}
	
	@Override
	public String getAll() {
		return listToJson(wpm.getAllWebPlan(), WebPlan.class);
	}

	@Override
	public String getByName(String name) {
		return listToJson(wpm.getWebPlanByName(name), WebPlan.class);
	}

	@Override
	public String getByDesigner(String designer) {
		return listToJson(wpm.getWebPlanByDesigner(designer), WebPlan.class);
	}

	@Override
	public String getReleased() {
		return listToJson(wpm.getWebPlanByState(1), WebPlan.class);
	}

	@Override
	public String getDraft() {
		return listToJson(wpm.getWebPlanByState(0), WebPlan.class);
	}
	
	
	
	
	/**
	 * ½«list·â×°µ½json
	 * @param list
	 * @return
	 */
	private String listToJson(List<?> list, Class<?> c) {
		if(null == list || 0 == list.size())
			return null;
		JSONArray array = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		int i=0;
		for (Object u : list) {
			i++;
			JSONObject ob = objectToJO(u, c);
			array.put(ob);
		}
		jsonObject.put("total", i);
		jsonObject.put("rows", array);
		return jsonObject.toString();
	}
	private String objectToJson(Object u, Class<?> c) {
		if(null == u)
			return null;
		JSONArray array = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		int i=0;
		i++;
		JSONObject ob = objectToJO(u, c);
		array.put(ob);
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
