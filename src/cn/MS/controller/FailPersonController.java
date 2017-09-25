package cn.MS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.MS.service.FailPersonService;

@RestController
public class FailPersonController {
	@Autowired
	private FailPersonService fps;
	
	@RequestMapping(value="/queryAllFailPerosn", produces = "text/html;charset=UTF-8")
	public String queryAllFailPerosn() {
		String fp = fps.getAll();
		if(null == fp)
			return "NONE";
		return fp;
	}
	@RequestMapping(value="/queryCompareResults", produces = "text/html;charset=UTF-8")
	public String queryCompareResults() {
		String cr = fps.compare().toString();
		if(null == cr)
			return "NONE";
		return cr;
	}
}
