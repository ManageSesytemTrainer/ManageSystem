 package cn.MS.service;

import cn.MS.bean.WebPlan;

public interface WebPlanService {
	int add(WebPlan wp);
	int update(WebPlan wp);
	String getById(int id);
	WebPlan getObjectById(int id);
	String getAll();
	String getByName(String name);
	String getByDesigner(String designer);
	String getReleased();
	/**
	 * 获取草稿计划
	 * @return 草稿计划列表
	 */
	String getDraft();
}
