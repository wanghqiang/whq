package cn.wq.service;

import java.util.List;

import cn.wq.po.Information;
import cn.wq.vo.InformationConditon;
import cn.wq.vo.PageBean;;

public interface InformationService {
	public int addInfromation(Information information);
	public List<Information> queryInfromation();
	public PageBean<Information> informationList(InformationConditon informationConditon,PageBean<Information> pageBean);
}
