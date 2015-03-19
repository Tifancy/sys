package com.pro.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pro.system.entity.Resource;
import com.pro.system.mapper.SecurityMapper;
import com.pro.system.service.ResourceService;

@Service
@Transactional
public class ResourceServiceImpl implements ResourceService {
	
	@Autowired
	private SecurityMapper securityMapper;

	@Override
	public List<Resource> findMenuByModuleIdAndUserId(Integer moduleId,
			Integer id) {
		
		return this.securityMapper.findMenuByModuleIdAndUserId(moduleId, id);
	}

	@Override
	public List<Resource> findModuleListUserId(Integer userId) {
		return this.securityMapper.findModuleListUserId( userId);
	}
	
}
