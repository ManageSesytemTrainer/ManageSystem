package cn.MS.service;

import org.springframework.web.multipart.MultipartFile;

public interface VisitDataService {
	/**
	 * ��ȡexcel�е�����,����list
	 */
	String readExcelFile(MultipartFile file);
}
