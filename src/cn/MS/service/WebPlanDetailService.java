package cn.MS.service;

import cn.MS.bean.WebPlanDetail;

public interface WebPlanDetailService {
	int add(WebPlanDetail wpd);
	int update(WebPlanDetail wpd);
	String getById(int id);
	String getAll();
	String getByName(String name);
	String getReleased();
	/**
	 * ��ȡ�ݸ�ƻ�
	 * @return �ݸ�ƻ��б�
	 */
	String getDraft();
}
