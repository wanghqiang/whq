package cn.wq.mapper;

import java.util.List;

import cn.wq.po.Administrator;

public interface AdminLoginMapper {
	//管理员登录
	Administrator adminLogin(String acount);
	//店铺列表
	List<Administrator> adminList();
	//添加店铺
	int addAdmin(Administrator administrator);
	//关闭店铺
	int deleteAdmin(int id);
}
