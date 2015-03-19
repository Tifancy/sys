package com.pro.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pro.system.entity.Resource;
import com.pro.system.entity.Role;

public interface SecurityMapper {

	List<Role> findRoleListByUserId(@Param("userId")Integer id);

	List<Resource> findResourceListByRoleId(@Param("roleId")Integer roleId);

	List<Resource> findMenuByModuleIdAndUserId(@Param("moduleId")Integer moduleId, @Param("userId")Integer id);

	List<Resource> findModuleUserId(
			Integer userId);

	List<Resource> findModuleListUserId(Integer userId);
}
