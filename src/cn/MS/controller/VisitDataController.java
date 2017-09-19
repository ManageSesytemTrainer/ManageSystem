package cn.MS.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.MS.service.VisitDataService;

@Controller
public class VisitDataController {
	
	@Autowired
	@Qualifier("visitDataService")
	private VisitDataService visitDataService;
	
	@RequestMapping(value="/excel_import",method = RequestMethod.POST)
    @ResponseBody
    public String  upload(@RequestParam(value="file",required = false)MultipartFile file,HttpServletRequest request, HttpServletResponse response){
        String result = visitDataService.readExcelFile(file);
        System.out.println(result);
        return result;
    }

}
