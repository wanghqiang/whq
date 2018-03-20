package cn.wq.serviceImput;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wq.mapper.AdminLoginMapper;
import cn.wq.po.Administrator;
import cn.wq.service.AdminLoginService;

@Service //将AdminLoginServiceImput注入spring容器
public class AdminLoginServiceImput implements AdminLoginService {

	@Autowired //通过注解注入adminLoginMapper属性
	private AdminLoginMapper adminLoginMapper;
	//Service层  管理员登录 
	@Override
	public Administrator adminLogin(String acount) {
		Administrator administrator = adminLoginMapper.adminLogin(acount);
		return administrator;
	}
	//管理员列表
	@Override
	public List<Administrator> adminList() {
		List<Administrator> adminList =adminLoginMapper.adminList();
		return adminList;
	}
	public int addAdmin(Administrator administrator) {
		// TODO Auto-generated method stub
		try {
			int i=adminLoginMapper.addAdmin(administrator);
			return i;
		} catch (Exception e) {
			return -1;
		}
	}

}
