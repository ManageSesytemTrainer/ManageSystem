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
		// 创建处理EXCEL的类
		ExcelUtil excelUtil = new ExcelUtil();
		// 解析excel，获取上传的事件单
		List<VisitData> visitDataList = excelUtil.getExcelInfo(file);
		// 至此已经将excel中的数据转换到list里面了,接下来就可以操作list,可以进行保存到数据库,或者其他操作
		for (VisitData visitData : visitDataList) {
			User user = userMapper.getUserByName(visitData.getVisitPerson());
			if(user != null){
				visitData.setUser(user);
				count+=visitDataMapper.addVisitData(visitData);
			}
		}
		if (count != 0) {
			result = "成功上传"+count+"条数据！";
		} else {
			result = "上传失败！";
		}
		return result;
	}

}
