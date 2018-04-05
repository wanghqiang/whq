package cn.wq.service;

import java.util.List;

import cn.wq.po.Administrator;
//管理员service接口
public interface AdminLoginService {
	/*
	 * 管理员登录
	 */
	public Administrator adminLogin(String acount);
	/*
	 * 店铺列表
	 */
	public List<Administrator> adminList();
	/*
	 * 申请店铺
	 */
	public int addAdmin(Administrator administrator);
	/*
	 * 关闭店铺
	 */
	public int deleteAdmin(int id);
}
