package cn.MS.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.MS.bean.User;
import cn.MS.bean.VisitData;
import cn.MS.service.RoleService;
import cn.MS.service.VisitDataService;

@Controller
public class VisitDataController {
	
	@Autowired
	@Qualifier("visitDataService")
	private VisitDataService visitDataService;
	
	@Autowired
	@Qualifier("roleService")
	private RoleService roleService;
	
	@RequestMapping(value="/excel_import",method = RequestMethod.POST)
    @ResponseBody
    public String  upload(@RequestParam(value="file",required = false)MultipartFile file,HttpServletRequest request, HttpServletResponse response) throws Exception{
        String result = visitDataService.readExcelFile(file);
        System.out.println(result);
        return result;
    }
	
	@RequestMapping("/visitData_add")
	@ResponseBody
	public String addVisitData(VisitData visitData,String visitDate,String visitTime,HttpServletRequest request)throws Exception{
		SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat formatTime = new SimpleDateFormat("HH:mm:SS");
		visitData.setVisitDate(formatDate.parse(visitDate));
		visitData.setVisitTime(formatTime.parse(visitTime));
		HttpSession session = request.getSession();
		visitData.setVisitPerson((String)session.getAttribute("name"));
		visitData.setDepartmentName((String) session.getAttribute("department"));
		visitData.setReleName(roleService.selectRoleById((Integer) session.getAttribute("role_id")).getRoleName());
		visitData.setUser((User)session.getAttribute("user"));
		
		return visitDataService.addVisitData(visitData);
	}
	
	@RequestMapping("/queryVisitData")
	@ResponseBody
	public String queryVisitData(String username,Date date) throws Exception{
		if(username != null){
			String vd = visitDataService.getByUsername(username);
			if(null == vd)
				return "ERROR";
			return vd;
		}else if(date != null){
			String vd = visitDataService.getByDate(date);
			if(null == vd)
				return "ERROR";
			return vd;
		}else{
			String vd = visitDataService.getAll();
			if(null == vd)
				return "还没有数据";
			return vd;
		}
	}
	@RequestMapping("/queryVisitDataByUsername")
	@ResponseBody
	public String queryRoleByUsername(String username) {
		String vd = visitDataService.getByUsername(username);
		if(null == vd)
			return "ERROR";
		return vd;
	}
	@RequestMapping("/queryVisitDataByDate")
	@ResponseBody
	public String queryVisitDataByDate(Date date) {
		String vd = visitDataService.getByDate(date);
		if(null == vd)
			return "ERROR";
		return vd;
	}
	@RequestMapping("/queryAllVisitData")
	@ResponseBody
	public String queryAllVisitData() {
		String vd = visitDataService.getAll();
		if(null == vd)
			return "还没有数据";
		return vd;
	}

}
