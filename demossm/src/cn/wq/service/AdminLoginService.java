package cn.wq.service;

import java.util.List;

import cn.wq.po.Administrator;
//管理员service接口
public interface AdminLoginService {
	
	public Administrator adminLogin(String acount);
	public List<Administrator> adminList();
	public int addAdmin(Administrator administrator);
}
