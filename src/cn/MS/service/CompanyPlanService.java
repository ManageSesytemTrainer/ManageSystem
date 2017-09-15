package cn.MS.service;

import cn.MS.bean.CompanyPlan;

public interface CompanyPlanService {
	String select(CompanyPlan cp);
	int insert(CompanyPlan cp);
}
