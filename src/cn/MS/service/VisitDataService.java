package cn.MS.service;


import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public interface VisitDataService {
	/**
	 * ��ȡexcel�е�����,����list
	 */
	String readExcelFile(MultipartFile file);
	String getByUsername(String username);
	String getByDate(Date date);
}
