package com.pro.system.service;

import java.util.List;

import com.pro.system.entity.Resource;
import com.pro.system.entity.Role;

public interface SecurityService {

	/***
	 * 根据用户id获取角色列表
	 * @param id
	 * @return
	 */
	List<Role> findRoleListByUserId(Integer id);

	/***
	 * 根据角色id查询对应的有效资源
	 * @param id
	 * @return
	 */
	List<Resource> findResourceListByRoleId(Integer id);

	/**
	 * 获取有效的资源集合
	 * @return
	 */
	List<Resource> finAllResourceList(boolean state);

}
