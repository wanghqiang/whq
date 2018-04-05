package cn.wq.mapper;

import cn.wq.po.Information;
import cn.wq.po.InformationExample;
import cn.wq.vo.InformationConditon;
import cn.wq.vo.PageBean;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface InformationMapper {
    int countByExample(InformationExample example);

    int deleteByExample(InformationExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Information record);

    int insertSelective(Information record);

    List<Information> selectByExample(InformationExample example);

    Information selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Information record, @Param("example") InformationExample example);

    int updateByExample(@Param("record") Information record, @Param("example") InformationExample example);

    int updateByPrimaryKeySelective(Information record);

    int updateByPrimaryKey(Information record);
    //组合查询二手信息
    List<Information> informationList(@Param("condition")InformationConditon name,@Param("pageBean")PageBean<Information> pBean);
    //满足条件的二手信息总记录数
    int countInformation(@Param("condition")InformationConditon name);
}