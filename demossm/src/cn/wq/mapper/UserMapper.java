package cn.wq.mapper;

import java.util.List;

import cn.wq.po.User;

public interface UserMapper {
	//查询所有用户
	List<User> userList();
	/*
	 * 用户登陆
	 */
	User userLogin(String userAcount);
	/*
	 * 注销用户
	 */
	void deleteUser(int id);
	
}
