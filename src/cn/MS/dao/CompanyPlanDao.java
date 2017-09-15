package cn.MS.dao;

import java.util.List;

import cn.MS.bean.CompanyPlan;

public interface CompanyPlanDao {
	List<CompanyPlan> select(CompanyPlan cp);
	int insert(CompanyPlan cp);
}
