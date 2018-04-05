package cn.wq.service;

import java.util.List;


import cn.wq.po.User;

public interface UserService {
	User userLogin(String userAcount,String userPassword);
	
	User queryAcount(String userAcount);
	
	List<User> userlist();
	
	int deleteUser(int id);
}
