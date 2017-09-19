package cn.MS.controller;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.MS.bean.CompanyPlan;
import cn.MS.bean.User;
import cn.MS.service.CompanyPlanService;
import cn.MS.service.UserService;

@Controller
public class CompanyPlanController {
	@Autowired
	@Qualifier("companyPlanService")
	private CompanyPlanService companyPlanService;
	
	@Autowired
	@Qualifier("userService")
	private UserService us;
	
	@RequestMapping("/companyPlan_insert")
	@ResponseBody
	public String insert (CompanyPlan companyPlan,String planDateStart,String planDateEnd,String designDate) throws Exception {
		User user = us.getUserObject(companyPlan.getDesigner());
		if(user == null) {
			return "所属用户不存在！";
		}
		companyPlan.setUser(user);
		SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd");
		companyPlan.setPlanDateStart(formatDate.parse(planDateStart));
		companyPlan.setPlanDateEnd(formatDate.parse(planDateEnd));
		companyPlan.setDesignDate(formatDate.parse(designDate));
		companyPlan.setState(1);
		if(companyPlanService.insert(companyPlan) != 0){
			return "插入成功！";
		}else{
			return "插入失败！";
		}
	}
	
	@RequestMapping("/companyPlan_select")
	@ResponseBody
	public String select (CompanyPlan companyPlan) throws Exception {
		return companyPlanService.select(companyPlan);
	}
}
