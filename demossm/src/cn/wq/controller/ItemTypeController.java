package cn.wq.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.wq.po.ItemType;
import cn.wq.serviceImput.ItemTypeServiceImput;

@Controller
public class ItemTypeController {
	@Autowired
	private ItemTypeServiceImput itemTypeServiceImput;
	/*
	 * 获得商品种类
	 */
	@RequestMapping(value="queryItemType.action")
	@ResponseBody
	public List<ItemType> queryItemType(){
		List<ItemType> list = itemTypeServiceImput.queryItemType();
		System.out.println(list);
		return list;
	}
}
