package cn.MS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.MS.bean.Department;
import cn.MS.service.DepartmentService;

@Controller
public class DepartmentController {
	@Autowired
	DepartmentService ds;
	
	@RequestMapping(value="/departments",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String getDepatments(){
		return ds.selectAll();
	}
	@RequestMapping("/update")
	@ResponseBody
	public String updateDepartment(Department de){
		ds.updateDepartment(de);
		return "success";
	}
	
}