package cn.wq.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SkipController {
	//登录之后才能进入发布信息界面
	@RequestMapping(value="issueInformation.action")
	public String issueInformation(HttpServletResponse response,HttpServletRequest request) throws IOException{
		String url="redirect:/jsp/issueInformation.jsp";
		return url;
	}
}
