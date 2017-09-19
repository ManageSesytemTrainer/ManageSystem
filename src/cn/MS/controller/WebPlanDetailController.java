package cn.MS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.MS.bean.User;
import cn.MS.bean.WebPlan;
import cn.MS.bean.WebPlanDetail;
import cn.MS.service.UserService;
import cn.MS.service.WebPlanDetailService;
import cn.MS.service.WebPlanService;

@Controller
public class WebPlanDetailController {

	@Autowired
	@Qualifier("webPlanDetailService")
	private WebPlanDetailService wpds;

	@Autowired
	@Qualifier("webPlanService")
	private WebPlanService wps;

	@Autowired
	@Qualifier("userService")
	private UserService us;

	@RequestMapping("/webPlanDetail_add")
	@ResponseBody
	public String add(int webPlan_id, WebPlanDetail wpd, int state) throws Exception {
		WebPlan webPlan = wps.getObjectById(webPlan_id, state);
		if (webPlan == null) {
			return "所属网点计划不存在！";
		}
		User user = us.getUserObject(wpd.getName());
		if (user == null) {
			return "所属用户不存在";
		}
		wpd.setWebPlan(webPlan);
		wpd.setUser(user);
		wpd.setState(0);
		if (wpds.add(wpd) != 0) {
			return "添加成功！";
		} else {
			return "添加失败！";
		}
	}

	@RequestMapping("/webPlanDetail_update")
	@ResponseBody
	public String update(WebPlanDetail wpd) throws Exception {
		if(wpds.getObjectById(wpd.getId()).getState() == 1){
			return "计划已经发布！不允许修改！";
		}
		int count = 0;
		if (wpd.getName() == null) {
			count = wpds.add(wpd);
		} else {
			User user = us.getUserObject(wpd.getName());
			if (user == null) {
				return "所属用户不存在！";
			} else {
				wpd.setUser(user);
				count = wpds.add(wpd);
			}
		}
		if (count != 0) {
			return "更新成功！";
		} else {
			return "更新失败！";
		}
	}

	@RequestMapping("/webPlanDetail_getById")
	@ResponseBody
	public String getById(int id,int state) throws Exception {
		return wpds.getById(id,state);
	}

	@RequestMapping("/webPlanDetail_getAll")
	@ResponseBody
	public String getAll(int state) throws Exception {
		return wpds.getAll(state);
	}

	@RequestMapping("/webPlanDetail_getByName")
	@ResponseBody
	public String getByName(String name,int state) throws Exception {
		return wpds.getByName(name,state);
	}

	@RequestMapping("/webPlanDetail_getReleased")
	@ResponseBody
	public String getReleased() throws Exception {
		return wpds.getReleased();
	}

	@RequestMapping("/webPlanDetail_getDraft")
	@ResponseBody
	public String getDraft() throws Exception {
		return wpds.getDraft();
	}
}
