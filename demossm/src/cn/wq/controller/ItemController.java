package cn.wq.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.wq.po.Item;
import cn.wq.service.ItemService;

@Controller
public class ItemController {
	@Autowired
	private ItemService itemService;
	
	@RequestMapping(value="queryItemAll.action")
	@ResponseBody
	public List<Item> queryItemAll(){
		List<Item> itemAll = itemService.queryItemAll();
		return itemAll;
	}
}
