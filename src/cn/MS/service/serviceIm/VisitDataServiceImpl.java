package cn.MS.service.serviceIm;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import cn.MS.bean.User;
import cn.MS.bean.VisitData;
import cn.MS.dao.UserMapper;
import cn.MS.dao.VisitDataMapper;
import cn.MS.service.VisitDataService;
import cn.MS.util.ExcelUtil;

@Service("visitDataService")
public class VisitDataServiceImpl implements VisitDataService {
	
	@Autowired
	private VisitDataMapper visitDataMapper;
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public String readExcelFile(MultipartFile file) {
		String result = "";
		int count = 0;
		// ��������EXCEL����
		ExcelUtil excelUtil = new ExcelUtil();
		// ����excel����ȡ�ϴ����¼���
		List<VisitData> visitDataList = excelUtil.getExcelInfo(file);
		// �����Ѿ���excel�е�����ת����list������,�������Ϳ��Բ���list,���Խ��б��浽���ݿ�,������������
		for (VisitData visitData : visitDataList) {
			User user = userMapper.getUserByName(visitData.getVisitPerson());
			if(user != null){
				visitData.setUser(user);
				count+=visitDataMapper.addVisitData(visitData);
			}
		}
		if (count != 0) {
			result = "�ɹ��ϴ�"+count+"�����ݣ�";
		} else {
			result = "�ϴ�ʧ�ܣ�";
		}
		return result;
	}

}
