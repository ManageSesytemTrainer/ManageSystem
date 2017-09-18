package cn.MS.dao;

import java.util.List;

import cn.MS.bean.WebPlan;

public interface WebPlanMapper {
	int addWebPlan(WebPlan wp);
	int updateWebPlan(WebPlan wp);
	WebPlan getWebPlanById(int id);
	List<WebPlan> getAllWebPlan();
	/**
	 * ���ݼƻ���ģ����ѯ
	 * @param name
	 * @return
	 */
	List<WebPlan> getWebPlanByName(String name);
	List<WebPlan> getWebPlanByDesigner(String designer);
	List<WebPlan> getWebPlanByState(int state);
}
