package cn.MS.service.serviceIm;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.MS.bean.WebPlanDetail;
import cn.MS.dao.WebPlanDetailMapper;
import cn.MS.service.WebPlanDetailService;

@Service("webPlanDetailService")
public class WebPlanDetailServiceImpl implements WebPlanDetailService{
	
	@Autowired
	private WebPlanDetailMapper wpdm;
	
	@Override
	public int add(WebPlanDetail wpd) {
		return wpdm.addWebPlanDetail(wpd);
	}

	@Override
	public int update(WebPlanDetail wpd) {
		return wpdm.updateWebPlanDetail(wpd);
	}

	@Override
	public String getById(int id) {
		return objectToJson(wpdm.getWebPlanDetailById(id), WebPlanDetail.class);
	}

	@Override
	public String getAll() {
		return listToJson(wpdm.getAllWebPlanDetail(), WebPlanDetail.class);
	}

	@Override
	public String getByName(String name) {
		return listToJson(wpdm.getWebPlanDetailByName(name), WebPlanDetail.class);
	}

	@Override
	public String getReleased() {
		return listToJson(wpdm.getWebPlanByState(1), WebPlanDetail.class);
	}

	@Override
	public String getDraft() {
		return listToJson(wpdm.getWebPlanByState(0), WebPlanDetail.class);
	}
	
	
	
	
	/**
	 * ½«list·â×°µ½json
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
