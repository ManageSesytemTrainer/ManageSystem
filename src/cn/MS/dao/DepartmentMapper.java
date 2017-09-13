package cn.MS.dao;

import java.util.List;

import cn.MS.bean.Department;

/**
 * @author VickyDan
 * 
 */
public interface DepartmentMapper {
	int addDepartment(Department de);
	List<Department> selectAll();
	int deleteDepartment(Department de);
	int updateDepartment(Department de);
}
