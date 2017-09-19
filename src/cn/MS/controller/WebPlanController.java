package cn.MS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.MS.bean.WebPlan;
import cn.MS.service.WebPlanService;

@RestController
public class WebPlanController {
	@Autowired
	private WebPlanService wps;
	
	@RequestMapping("/webPlan_addWebPlan")
	public String addWebPlan(WebPlan wp) {
		if(0 >= wps.add(wp))
			return "ERROR";
		return "SUCCESS";
	}
	@RequestMapping("/webPlan_updateWebPlan")
	public String updateWebPlan(WebPlan wp) {
		if(0 >= wps.update(wp))
			return "ERROR";
		return "SUCCESS";
	}
	@RequestMapping("/getWebPlanById")
	public String getWebPlanById(int id, int state) {
		String wp = wps.getById(id, state);
		if(null == wp)
			return "ERROR";
		return wp;
	}
	@RequestMapping("/getAllWebPlan")
	public String getAllWebPlan() {
		return wps.getAll();
	}
	@RequestMapping("/getReleasedWebPlan")
	public String getReleasedWebPlan() {
		String wp = wps.getReleased();
		if(null == wp)
			return "ERROR";
		return wp;
	}
	@RequestMapping("/getDraftWebPlan")
	public String getDraftWebPlan() {
		String wp = wps.getDraft();
		if(null == wp)
			return "ERROR";
		return wp;
	}
	@RequestMapping("/getWebPlanByName")
	public String getWebPlanByName(String name, int state) {
		String wp = wps.getByName(name, state);
		if(null == wp)
			return "ERROR";
		return wp;
	}
	@RequestMapping("/getWebPlanByDesigner")
	public String getWebPlanByDesigner(String designer, int state) {
		String wp = wps.getByDesigner(designer, state);
		if(null == wp)
			return "ERROR";
		return wp;
	}
}
