package cn.wq.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.wq.po.Administrator;
import cn.wq.service.UniversityService;

@Controller
public class UniversityController {
	@Autowired
	private UniversityService universityService;
	@RequestMapping(value="uList.action")
	@ResponseBody
	public List<Administrator> uList(){

		List<Administrator> uList = universityService.uList();
		return uList;
	}
	@RequestMapping(value="uList2.action")
	@ResponseBody
	public List<Administrator> uList2(){

		List<Administrator> uList = universityService.uList2();
		return uList;
	}
}
