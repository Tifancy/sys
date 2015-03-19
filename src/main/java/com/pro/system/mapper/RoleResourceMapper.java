package com.pro.system.mapper;

import com.pro.system.entity.RoleResource;
import com.pro.system.entity.RoleResourceCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RoleResourceMapper {
    int countByExample(RoleResourceCriteria example);

    int deleteByExample(RoleResourceCriteria example);

    int insert(RoleResource record);

    int insertSelective(RoleResource record);

    List<RoleResource> selectByExample(RoleResourceCriteria example);

    int updateByExampleSelective(@Param("record") RoleResource record, @Param("example") RoleResourceCriteria example);

    int updateByExample(@Param("record") RoleResource record, @Param("example") RoleResourceCriteria example);
}