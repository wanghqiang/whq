package cn.wq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.wq.po.User;
import cn.wq.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	/*
	 * 查看账号是否存在
	 */
	@RequestMapping(value="queryAcount.action")
	@ResponseBody
	public User queryAcount(String userAcount){
		User user = userService.queryAcount(userAcount);
		
	    return user;	
	}
	/*
	 * 登录，登录成功跳转到信息页面，失败重新登录
	 */
	@RequestMapping(value="userLogin.action")
	public String userLogin(String userAcount,String userPassword,HttpServletRequest request){
		User user = userService.userLogin(userAcount, userPassword);
		System.out.println(user);
		if(user!=null){
			request.getSession().setAttribute("user", user);
			return "jsp/information";
		}
		else{
			return "jsp/userLogin";
		}
		
	}
	/*
	 * 查询所有用户
	 */
	@RequestMapping(value="userlist.action")
	public String userlist(Model model){
		List<User> userlist = userService.userlist();
		model.addAttribute("userlist", userlist);
		return "admin/userlist";
	}
	/*
	 * 注销用户
	 */
	@RequestMapping(value="deleteUser.action")
	@ResponseBody
	public Integer deleteUser(int id){
		Integer i = userService.deleteUser(id);
		return i;
	}
}
