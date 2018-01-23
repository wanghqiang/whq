package cn.wq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.wq.po.Administrator;
import cn.wq.serviceImput.AdminLoginServiceImput;
//管理员handler
@Controller
public class AdminController {
	@Autowired
	private AdminLoginServiceImput adminLoginServiceImput;
	//管理员登录
	@RequestMapping(value="adminLoginController")
	public String adminLoginController(String acount, String password){
		Administrator administrator = adminLoginServiceImput.adminLogin(acount);
		if(administrator==null){
			return "redirect:/jsp/AdminLogin.jsp";
		}
		else if (administrator.getAdminpassword().equals(password)==false) {
			return "redirect:/jsp/AdminLogin.jsp";
		}
		return "sucess";
	}
	

}
