package cn.wq.serviceImput;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wq.mapper.ItemMapper;
import cn.wq.po.Item;
import cn.wq.service.ItemService;
@Service
public class ItemServiceImput implements ItemService {
	@Autowired
	private ItemMapper itemMapper;
	@Override
	public List<Item> queryItemAll() {
		try {
			List<Item> itemAll = itemMapper.queryItemAll();
			if (itemAll.isEmpty()==true) {
				return null;
			}
			return itemAll;
		} catch (Exception e) {
			return null;
		}
	}

}
