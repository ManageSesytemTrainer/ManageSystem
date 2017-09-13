package cn.MS.service.serviceIm;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.MS.bean.Department;
import cn.MS.service.DepartmentService;

public class DepartmentServiceImTest {
	DepartmentService ds;

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testAddDepartment() {

		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:config/applicationContext.xml");
		ds = (DepartmentService) ac.getBean("DepartmentService");
		Department de = new Department();
		de.setDepartmentName("行政");
		de.setPhone("955330");
		de.setState(0);
		assertNotEquals(-1, ds.addDepartment(de));
	}

	

	@Test
	public void testDelete() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:config/applicationContext.xml");
		ds = (DepartmentService) ac.getBean("DepartmentService");
		Department de = new Department();
		de.setId(1001);
		
		assertNotEquals(-1, ds.delete(de));
	}

	@Test
	public void testSelectAll() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:config/applicationContext.xml");
		ds = (DepartmentService) ac.getBean("DepartmentService");
		String str=ds.selectAll();
		fail(str);
	}

	@Test
	public void testUpdateDepartment() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:config/applicationContext.xml");
		ds = (DepartmentService) ac.getBean("DepartmentService");
		Department de = new Department();
		de.setId(1003);
		de.setDepartmentName("行政");
		de.setPhone("955330");
		de.setState(0);
		assertNotEquals(-1, ds.updateDepartment(de));
	}

}
