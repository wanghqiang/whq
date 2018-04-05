package cn.wq.mapper;

import java.util.List;

import cn.wq.po.Item;

public interface ItemMapper {
    /*
     * 所有商品
     */
	List<Item> queryItemAll(); 
   
}