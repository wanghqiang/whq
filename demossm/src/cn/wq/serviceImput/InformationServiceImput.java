package cn.wq.serviceImput;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wq.mapper.InformationMapper;
import cn.wq.po.Information;
import cn.wq.vo.InformationConditon;
import cn.wq.vo.PageBean;
import cn.wq.service.InformationService;
@Service
public class InformationServiceImput implements InformationService {
	@Autowired
	private InformationMapper informationMapper;
	@Override
	public int addInfromation(Information information) {
		int i=informationMapper.insert(information);
		return i;
	}

	@Override
	public List<Information> queryInfromation() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageBean<Information> informationList(InformationConditon informationConditon,PageBean<Information> pageBean) {
		int tp=informationMapper.countInformation(informationConditon);
		List<Information> informationList = 
				informationMapper.informationList(informationConditon,pageBean);
		pageBean.setTr(tp);
		pageBean.setNumber();
		pageBean.setBeanList(informationList);
		return pageBean;
	}

}
