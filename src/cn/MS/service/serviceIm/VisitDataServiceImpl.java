package cn.MS.service.serviceIm;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import cn.MS.bean.User;
import cn.MS.bean.VisitData;
import cn.MS.dao.UserMapper;
import cn.MS.dao.VisitDataMapper;
import cn.MS.service.VisitDataService;
import cn.MS.util.ExcelUtil;

@Service("visitDataService")
public class VisitDataServiceImpl implements VisitDataService {
	
	@Autowired
	private VisitDataMapper visitDataMapper;
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public String readExcelFile(MultipartFile file) {
		String result = "";
		int count = 0;
		// 创建处理EXCEL的类
		ExcelUtil excelUtil = new ExcelUtil();
		// 解析excel，获取上传的事件单
		List<VisitData> visitDataList = excelUtil.getExcelInfo(file);
		// 至此已经将excel中的数据转换到list里面了,接下来就可以操作list,可以进行保存到数据库,或者其他操作
		for (VisitData visitData : visitDataList) {
			User user = userMapper.getUserByName(visitData.getVisitPerson());
			if(user != null){
				visitData.setUser(user);
				count+=visitDataMapper.addVisitData(visitData);
			}
		}
		if (count != 0) {
			result = "成功上传"+count+"条数据！";
		} else {
			result = "上传失败！";
		}
		return result;
	}

	@Override
	public String getByUsername(String username) {
		return listToJson(visitDataMapper.getVisitDataByVisitPerson(username), VisitData.class);
	}

	@Override
	public String getByDate(String date) {
		return listToJson(visitDataMapper.getVisitDataByVisitDate(date), VisitData.class);
	}

	
	
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
