package cn.MS.service;

import cn.MS.bean.Department;

public interface DepartmentService {
	int addDepartment(Department de);
	int delete(Department de);
	String selectAll();
	int updateDepartment(Department de);
}