package cn.wq.mapper;

import java.util.List;

import cn.wq.po.Administrator;

public interface AdminLoginMapper {
	//管理员登录
	Administrator adminLogin(String acount);
	//管理员列表
	List<Administrator> adminList();
	//添加管理员
	int addAdmin(Administrator administrator);
}
