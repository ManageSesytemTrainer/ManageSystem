package cn.MS.service.serviceIm;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import cn.MS.bean.CompanyPlan;
import cn.MS.dao.CompanyPlanMapper;
import cn.MS.service.CompanyPlanService;

@Transactional
public class CompanyPlanServiceIm implements CompanyPlanService{
	@Autowired
	CompanyPlanMapper cd;
	@Override
	public String select(CompanyPlan cp) {
		List<CompanyPlan> list= cd.select(cp);
		JSONObject jsonObject=new JSONObject();
		JSONArray array=new JSONArray();
		int i=0;
		for(CompanyPlan c:list){
			i++;
			JSONObject ob=new JSONObject();
			ob.put("id", c.getId());
			ob.put("planName", c.getPlanName());
			ob.put("planDateStart", c.getPlanDateStart());
			ob.put("planDateEnd", c.getPlanDateEnd());
			ob.put("designDate", c.getDesignDate());
			ob.put("webType", c.getWebType());
			ob.put("season", c.getSeason());
			ob.put("personTimes", c.getPersonTimes());
			ob.put("totalTimes", c.getTotalTimes());
			ob.put("personCollections", c.getPersonCollections());
			ob.put("remark", c.getRemark());
			ob.put("user_id", c.getUser().getId());
			ob.put("user_department_id", c.getUser().getDepartment().getId());
			ob.put("user_role_id", c.getUser().getRole().getId());
			array.put(ob);
		}
		jsonObject.put("total", i);
		jsonObject.put("rows", array);
		return jsonObject.toString();
	}

	@Override
	public int insert(CompanyPlan cp) {
		// TODO Auto-generated method stub
		return cd.insert(cp);
	}

}
