package cn.MS.service;

import org.springframework.web.multipart.MultipartFile;

public interface VisitDataService {
	/**
	 * 读取excel中的数据,生成list
	 */
	String readExcelFile(MultipartFile file);
}
