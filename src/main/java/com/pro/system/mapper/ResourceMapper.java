package com.pro.system.mapper;

import com.pro.system.entity.Resource;
import com.pro.system.entity.ResourceCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ResourceMapper {
    int countByExample(ResourceCriteria example);

    int deleteByExample(ResourceCriteria example);

    int deleteByPrimaryKey(Integer id);

    int insert(Resource record);

    int insertSelective(Resource record);

    List<Resource> selectByExample(ResourceCriteria example);

    Resource selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Resource record, @Param("example") ResourceCriteria example);

    int updateByExample(@Param("record") Resource record, @Param("example") ResourceCriteria example);

    int updateByPrimaryKeySelective(Resource record);

    int updateByPrimaryKey(Resource record);
}