package cn.MS.dao;

import java.util.List;

import cn.MS.bean.WebPlanDetail;

public interface WebPlanDetailMapper {
	int addWebPlanDetail(WebPlanDetail wpd);

	int updateWebPlanDetail(WebPlanDetail wpd);

	WebPlanDetail getWebPlanDetailById(int id);

	List<WebPlanDetail> getAllWebPlanDetail();

	/**
	 * 根据计划名模糊查询
	 * 
	 * @param name
	 * @return
	 */
	List<WebPlanDetail> getWebPlanDetailByName(String name);

	List<WebPlanDetail> getWebPlanByState(int state);
}
