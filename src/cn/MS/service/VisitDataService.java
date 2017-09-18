package cn.MS.service;


import org.springframework.web.multipart.MultipartFile;

public interface VisitDataService {
	/**
	 * ��ȡexcel�е�����,����list
	 */
	String readExcelFile(MultipartFile file);
	String getByUsername(String username);
	/**
	 * �ַ������ڸ�ʽ yyyy-mm-dd
	 * @param date
	 * @return
	 */
	String getByDate(String date);
}
