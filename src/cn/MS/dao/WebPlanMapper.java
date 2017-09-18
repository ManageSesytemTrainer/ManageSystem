package cn.MS.dao;

import java.util.List;

import cn.MS.bean.WebPlan;

public interface WebPlanMapper {
	int addWebPlan(WebPlan wp);
	int updateWebPlan(WebPlan wp);
	WebPlan getWebPlanById(int id);
	List<WebPlan> getAllWebPlan();
	/**
	 * 根据计划名模糊查询
	 * @param name
	 * @return
	 */
	List<WebPlan> getWebPlanByName(String name);
	List<WebPlan> getWebPlanByDesigner(String designer);
	List<WebPlan> getWebPlanByState(int state);
}
