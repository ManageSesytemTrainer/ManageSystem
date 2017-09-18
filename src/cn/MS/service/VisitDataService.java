package cn.MS.service;


import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public interface VisitDataService {
	/**
	 * 读取excel中的数据,生成list
	 */
	String readExcelFile(MultipartFile file);
	String getByUsername(String username);
	String getByDate(Date date);
}
