package cn.MS.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.MS.bean.User;
import cn.MS.service.AcountService;

@Controller
public class AccountController {
	@Autowired
	AcountService as;
	
	
	@RequestMapping("/userlogin")
	@ResponseBody
	public String userlogin(User user,HttpServletRequest request){
		User fuser=as.getUser(user);
		if(fuser==null)
			return "none";
		else if(fuser.getPassword()!=user.getPassword())
			return "wrong";
		else{
			HttpSession session=request.getSession();
			session.setAttribute("userid", fuser.getId());
			session.setAttribute("jobNumber", fuser.getJobNumber());
			session.setAttribute("name", fuser.getName());
			session.setAttribute("sex", fuser.getSex());
			session.setAttribute("birthday", fuser.getBirthday());
			session.setAttribute("phone", fuser.getPhone());
			session.setAttribute("mobilePhone", fuser.getMobilePhone());
			session.setAttribute("email", fuser.getEmail());
			session.setAttribute("role_limit", fuser.getRole().getRoleLimit());
			session.setAttribute("department", fuser.getDepartmentName());
		}
		return "success";
	}
	
	@RequestMapping("/loginout")
	public String loginOut(HttpServletRequest request){
		HttpSession session=request.getSession();
		session.invalidate();
		return "login";
	}
}