package cn.wq.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.wq.po.Information;
import cn.wq.po.User;
import cn.wq.service.InformationService;
import cn.wq.vo.InformationConditon;
import cn.wq.vo.PageBean;

@Controller
public class InformationController {
	@Autowired
	private InformationService informationService;
	/*
	 * 发布二手信息
	 */
	@RequestMapping(value="addInformaton.action")
	public String addInformation(@RequestParam(value="picture1",required=false)MultipartFile[] picture1,
			MultipartFile picture4,Information information,HttpServletRequest request) throws IllegalStateException, IOException{
		//获取上传的图片存储到数据库和虚拟目录下
		String pic_path=request.getSession().getServletContext().getRealPath("/upload");

		String mysqlPicture=new String();
		
		for(MultipartFile mFile:picture1){
			if(mFile.getOriginalFilename()!=""){
				//获得图片旧的名称
				String imageOriginalName=mFile.getOriginalFilename();
				//给图片取新的名称
				String imageNewName=UUID.randomUUID()+imageOriginalName;
				//创建文件
				File newfile=new File(pic_path,imageNewName);
				//存储文件
				mFile.transferTo(newfile);
				mysqlPicture+=imageNewName+"&";
			}
		}
		if(picture4.getOriginalFilename()!=""){
			//获得图片旧的名称
			String imageOriginalName=picture4.getOriginalFilename();
			//给图片取新的名称
			String imageNewName=UUID.randomUUID()+imageOriginalName;
			File newfile=new File(pic_path,imageNewName);
			picture4.transferTo(newfile);
			information.setFPicture(imageNewName);
		}
		
		information.setPicture(mysqlPicture);
		User user = (User) request.getSession().getAttribute("user");
		if(user!=null){
			information.setUserId(user.getUserId());
		}
		
		
		informationService.addInfromation(information);
		
		return "sucess";
	}
	/*
	 * 高级查询二手信息
	 */
	@RequestMapping(value="informationList.action")
	@ResponseBody
	public PageBean<Information> informationList(
			InformationConditon informationConditon,
			PageBean<Information> pageBean,HttpServletRequest request){
		//设置每页记录数
		int ps=10;
		pageBean.setPs(ps);
		//得到当前页数
		int pc=Integer.parseInt(request.getParameter("pc"));
		//设置从第几个记录开始查询
		pageBean.setPc(pc);
		try {
			pageBean=informationService.informationList(informationConditon,pageBean);
		} catch (Exception e) {
		}
		return pageBean;
	}
	/*
	 * 二手信息列表
	 */
	@RequestMapping(value="informationList2.action")
	public String informationList2(){
		
		return "admin/information";
	}
}
