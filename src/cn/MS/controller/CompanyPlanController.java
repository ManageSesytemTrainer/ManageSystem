package cn.MS.controller;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
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
	private CompanyPlanService companyPlanService;
	
	@Autowired
	private UserService us;
	
	@RequestMapping("/companyPlan_insert")
	@ResponseBody
	public String insert (CompanyPlan companyPlan,String planDateStart,String planDateEnd,String designDate) throws Exception {
		User user = us.getUserObject(companyPlan.getDesigner());
		if(user == null) {
			return "wrong";
		}
		companyPlan.setUser(user);
		SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd");
		companyPlan.setPlanDateStart(formatDate.parse(planDateStart));
		companyPlan.setPlanDateEnd(formatDate.parse(planDateEnd));
		companyPlan.setDesignDate(formatDate.parse(designDate));
		companyPlan.setState(1);
		if(companyPlanService.insert(companyPlan) != 0){
			return "success";
		}else{
			return "fail";
		}
	}
	
	@RequestMapping("/companyPlan_select")
	@ResponseBody
	public String select () throws Exception {
		return companyPlanService.select();
	}
}
