package cn.MS.dao;

import java.util.List;

import cn.MS.bean.CompanyPlan;

public interface CompanyPlanMapper {
	List<CompanyPlan> select(CompanyPlan cp);
	int insert(CompanyPlan cp);
}
