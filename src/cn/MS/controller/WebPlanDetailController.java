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
	private WebPlanDetailService wpds;

	@Autowired
	private WebPlanService wps;

	@Autowired
	private UserService us;

	@RequestMapping("/webPlanDetail_add")
	@ResponseBody
	public String add(int webPlan_id, WebPlanDetail wpd) throws Exception {
		WebPlan webPlan = wps.getObjectById(webPlan_id);
		if (webPlan == null) {
			return "��������ƻ������ڣ�";
		}
		User user = us.getUserObject(wpd.getName());
		if (user == null) {
			return "�����û�������";
		}
		wpd.setWebPlan(webPlan);
		wpd.setUser(user);
		if (wpds.add(wpd) != 0) {
			return "��ӳɹ���";
		} else {
			return "���ʧ�ܣ�";
		}
	}

	@RequestMapping("/webPlanDetail_update")
	@ResponseBody
	public String update(WebPlanDetail wpd) throws Exception {
		int count = 0;
		if (wpd.getName() == null) {
			count = wpds.add(wpd);
		} else {
			User user = us.getUserObject(wpd.getName());
			if (user == null) {
				return "�����û������ڣ�";
			} else {
				wpd.setUser(user);
				count = wpds.add(wpd);
			}
		}
		if (count != 0) {
			return "���³ɹ���";
		} else {
			return "����ʧ�ܣ�";
		}
	}

	@RequestMapping("/webPlanDetail_getById")
	@ResponseBody
	public String getById(int id) throws Exception {
		return wpds.getById(id);
	}

	@RequestMapping("/webPlanDetail_getAll")
	@ResponseBody
	public String getAll() throws Exception {
		return wpds.getAll();
	}

	@RequestMapping("/webPlanDetail_getByName")
	@ResponseBody
	public String getByName(String name) throws Exception {
		return wpds.getByName(name);
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
