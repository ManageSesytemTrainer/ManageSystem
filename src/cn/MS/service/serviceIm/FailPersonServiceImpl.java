package cn.MS.service.serviceIm;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.MS.bean.CompareResults;
import cn.MS.bean.FailPerson;
import cn.MS.bean.VisitData;
import cn.MS.bean.WebPlanDetail;
import cn.MS.dao.FailPersonMapper;
import cn.MS.dao.UserMapper;
import cn.MS.dao.VisitDataMapper;
import cn.MS.dao.WebPlanDetailMapper;
import cn.MS.service.FailPersonService;

@Transactional
@Service("filePersonService")
public class FailPersonServiceImpl implements FailPersonService{
	@Autowired
	private FailPersonMapper fpm;
	@Autowired
	private WebPlanDetailMapper wpdm;
	@Autowired
	private VisitDataMapper vdm;
	@Autowired
	private UserMapper um;

	@Override
	public String getAll() {
		fpm.getAll();
		return null;
	}

	@Override
	public int add(FailPerson fp) {
		return fpm.add(fp);
	}

	@Override
	public int delete(int id) {
		return fpm.delete(id);
	}

	@Override
	public int update(FailPerson fp) {
		return fpm.update(fp);
	}

	@Override
	public void autoAddFailPerson() {
		List<CompareResults> list = compare();
		FailPerson fp = new FailPerson();
		for(CompareResults cr : list) {
			if(cr.getResult() == "不合格") {
				fp.setFaildate(cr.getDate());
				fp.setDescription(cr.getName());
				fp.setUser(um.getUserByName(cr.getName()));
				add(fp);
			}
		}
	}

	@Override
	public List<CompareResults> compare() {
		List<WebPlanDetail> list0= wpdm.getAllWebPlanDetail(1);  //查询所有计划
		if(null == list0 || 0 == list0.size())
			return null;
		List<CompareResults> list = new ArrayList<CompareResults>();
		for(WebPlanDetail wpd : list0) {
			String name = wpd.getName();
			List<VisitData> list1 = vdm.getVisitDataByVisitPerson(name);  //根据计划员工查询实际走访数据
			if(null != list1 && 0 < list1.size()) {
				CompareResults cr = new CompareResults();
				cr.setWebPlanDetailId(wpd.getId());
				cr.setName(wpd.getName());
				int flag = 0;  //标记
				for(VisitData vd : list1) {
					if(0 == vd.getVisitDate().compareTo(wpd.getVisitDate())
							&& vd.getAddress().equals(wpd.getVisitAddress())){
						cr.setVisitDataId(vd.getId());
						cr.setResult("合格");
						cr.setDate(vd.getVisitDate());
						cr.setAddress(vd.getAddress());
						flag++;
						break;
					}
				}
				if(0 == flag)
					cr.setResult("不合格");
				list.add(cr);
			}
		}
		return list;
	}
	
}
