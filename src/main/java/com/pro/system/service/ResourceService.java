package com.pro.system.service;

import java.util.List;

import com.pro.system.entity.Resource;

public interface ResourceService {

	/***
	 * 根据用户id 和模块 查询对应模块下的菜单列表
	 * 
	 * @param moduleId
	 * @param id
	 * @return
	 */
	List<Resource> findMenuByModuleIdAndUserId(Integer moduleId, Integer id);

	List<Resource> findModuleListUserId(Integer id);

}
