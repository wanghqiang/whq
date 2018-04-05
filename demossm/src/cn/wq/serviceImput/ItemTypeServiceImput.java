package cn.wq.serviceImput;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wq.mapper.ItemTypeMapper;
import cn.wq.po.ItemType;
import cn.wq.service.ItemTypeService;

@Service
public class ItemTypeServiceImput implements ItemTypeService {
	@Autowired
	private ItemTypeMapper itemTypeMapper;
	/*
	 * (non-Javadoc)
	 * @see cn.wq.service.ItemTypeService#queryItemType()
	 * 商品种类列表
	 */
	@Override
	public List<ItemType> queryItemType() {
		List<ItemType> list = itemTypeMapper.queryItemType();
		System.out.println(list);
		if (list.isEmpty()==true) {
			return null;
		}
		return list;
	}

}
