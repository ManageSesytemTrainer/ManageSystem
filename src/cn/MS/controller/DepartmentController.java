package cn.MS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.MS.service.DepartmentService;

@Controller
public class DepartmentController {
	@Autowired
	DepartmentService ds;
	
	@RequestMapping("/departments")
	@ResponseBody
	public String getDepatments(){
		return ds.selectAll();
	}
	
	
}
