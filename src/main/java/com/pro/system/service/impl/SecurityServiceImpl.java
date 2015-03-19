package com.pro.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pro.system.entity.Resource;
import com.pro.system.entity.ResourceCriteria;
import com.pro.system.entity.Role;
import com.pro.system.mapper.ResourceMapper;
import com.pro.system.mapper.SecurityMapper;
import com.pro.system.service.SecurityService;

@Service
public class SecurityServiceImpl implements SecurityService {

	@Autowired
	private SecurityMapper securityMapper;
	@Autowired
	private ResourceMapper resourceMapper;
	@Override
	public List<Role> findRoleListByUserId(Integer id) {
		return securityMapper.findRoleListByUserId(id);
	}
	@Override
	public List<Resource> findResourceListByRoleId(Integer id) {
		return securityMapper.findResourceListByRoleId(id);
	}
	
	@Override
	public List<Resource> finAllResourceList(boolean state) {
		
		ResourceCriteria resourceCriteria = new ResourceCriteria();
		resourceCriteria.createCriteria();
		return this.resourceMapper.selectByExample(resourceCriteria);
	}

}
