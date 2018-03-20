package cn.wq.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.wq.po.Administrator;
import cn.wq.serviceImput.AdminLoginServiceImput;
//管理员handler
@Controller
public class AdminController {
	@Autowired
	private AdminLoginServiceImput adminLoginServiceImput;
	//管理员登录
	@RequestMapping(value="adminLoginController")
	public String adminLoginController(String acount, String password,HttpServletRequest request){
		Administrator administrator = adminLoginServiceImput.adminLogin(acount);
		if(administrator!=null&&administrator.getAdminPassword().equals(password)==true&&administrator.getPermission().equals("高")){
			request.getSession().setAttribute("username", acount);
			return "background";
		}
		return "adLogin";
	}
	@RequestMapping(value="adminList.action")
	public ModelAndView adminList(){
		ModelAndView modelAndView=new ModelAndView();
		List<Administrator> adminList = adminLoginServiceImput.adminList();
		modelAndView.addObject("adminList", adminList);
		modelAndView.setViewName("background");
		return modelAndView;
	}
	//添加学校店铺（商铺管理员）
	@RequestMapping(value="addAdmin.action")
	public void addAdmin(Administrator administrator,
			HttpServletResponse response) throws IOException{
	
		int i=adminLoginServiceImput.addAdmin(administrator);
		response.getWriter().print(i);
		
	}
	//删除学校店铺（商铺管理员）
	@RequestMapping(value="deleteAdmin.action")
	public void deleteAdmin(Administrator administrator){
	}
	//修改权限
	
	
	
	
	
	
	
//	@RequestMapping(value="ajax.action")
//	public void ajax(String age,HttpServletRequest request,HttpServletResponse response) 
//			throws IOException{
//		/*
//		 * 解决响应编码方法：在调用getWright（）之前先写上response.setCharacterEncoding("UTF-8")
//		 */
////		String string=request.getParameter("name");
////		System.out.println(string); 获得参数
//		
//		
//		response.setCharacterEncoding("UTF-8");
//		System.out.println(age);
////		response.getWriter().print("{\"name\":\"王强\",\"age\":\"23\",\"password\":\"13456\"}");
//		
//	}
//	@RequestMapping(value="ajax2.action")
//	public @ResponseBody Administrator ajax2(@RequestBody Administrator administrator,
//			HttpServletRequest request,
//			HttpServletResponse response) throws IOException{
//		request.getParameter("adminId");
//		administrator.setAdminAcount("456789");
//		return administrator;
//	}
//	@RequestMapping(value="ajax3.action")
//	public @ResponseBody Administrator ajax3(Administrator administrator) throws IOException{
//		System.out.println(administrator.getAdminAcount());
//		return administrator;
//	}
}
