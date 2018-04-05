package cn.wq.serviceImput;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wq.mapper.UserMapper;
import cn.wq.po.User;
import cn.wq.service.UserService;

@Service
public class UserServiceImput implements UserService {
	@Autowired
	private UserMapper userMapper;
	/*
	 * 查找用户账号
	 */
	@Override
	public User queryAcount(String userAcount) {
		User user = userMapper.userLogin(userAcount);
		
		return user;
	}
	/*
	 *用户登陆
	 */
	@Override
	public User userLogin(String userAcount, String userPassword) {
		User user = userMapper.userLogin(userAcount);
		
		if (user!=null&&user.getUserPassWord().equals(userPassword)==true) {
			return user;
		}
		return null;
	}
	//查询所有用户
	@Override
	public List<User> userlist() {
		try {
			List<User> userList = userMapper.userList();
			if(userList.isEmpty()==true){
				return null;
			}
			return userList;
		} catch (Exception e) {
			return null;
		}
		
	}
	/*
	 * 注销用户
	 */
	@Override
	public int deleteUser(int id) {
		try {
			userMapper.deleteUser(id);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
		
	}

}
