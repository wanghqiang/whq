package cn.wq.serviceImput;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wq.mapper.UniversityMapper;
import cn.wq.po.Administrator;
import cn.wq.service.UniversityService;
@Service
public class UniversityServiceImput implements UniversityService {
	@Autowired
	private UniversityMapper universityMapper;
	@Override
	public List<Administrator> uList() {
		List<Administrator> list=universityMapper.universityList();
		return list;
	}
	@Override
	public List<Administrator> uList2() {
		List<Administrator> list=universityMapper.unversityList2();
		return list;
	}

}
