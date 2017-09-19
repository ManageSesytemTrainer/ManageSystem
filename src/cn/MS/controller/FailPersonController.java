package cn.MS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.MS.service.FailPersonService;

@RestController
public class FailPersonController {
	@Autowired
	private FailPersonService fps;
	
	@RequestMapping("/queryAllFailPerosn")
	public String queryAllFailPerosn() {
		String fp = fps.getAll();
		if(null == fp)
			return "没有不合格的！";
		return fp;
	}
	@RequestMapping("/queryCompareResults")
	public String queryCompareResults() {
		String cr = fps.compare().toString();
		if(null == cr)
			return "还没有数据";
		return cr;
	}
}
