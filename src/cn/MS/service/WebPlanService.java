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
	 * ��ȡ�ݸ�ƻ�
	 * @return �ݸ�ƻ��б�
	 */
	String getDraft();
}
