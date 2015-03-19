package com.pro.system.security;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.util.CollectionUtils;

import com.pro.system.entity.Resource;
import com.pro.system.service.SecurityService;

public class SecurityFilterInvocationSecurityMetadataSource implements
		FilterInvocationSecurityMetadataSource {

	private static final Logger logger = Logger.getLogger(SecurityFilterInvocationSecurityMetadataSource.class);
	private Set<String> permissionList = new HashSet<String>();
	@Autowired
	private SecurityService securityService;
	
	private void loadAllResourceList() {
		
		List<Resource> resourceList = this.securityService.finAllResourceList(true);
		
		if (!CollectionUtils.isEmpty(resourceList)) {
			
			for (Resource resource : resourceList) {
				String url =resource.getUrl();
				permissionList.add(url);
			}
		}
	}
	@Override
	public Collection<ConfigAttribute> getAttributes(Object object)
			throws IllegalArgumentException {
		
		if (CollectionUtils.isEmpty(permissionList)) {
			this.loadAllResourceList();
			
		}
		FilterInvocation invocation = (FilterInvocation) object;
		String permission = invocation.getRequestUrl();
		logger.info("============ url :" + permission  +"============");
		if (permissionList.contains(permission)) {
			
			Set<ConfigAttribute> configAttributes = new HashSet<ConfigAttribute>();
			SecurityConfig config = new SecurityConfig(permission);
			configAttributes.add(config); 
			return configAttributes;
		}
		return new HashSet<ConfigAttribute>(0);
	}

	@Override
	public Collection<ConfigAttribute> getAllConfigAttributes() {

		if (CollectionUtils.isEmpty(permissionList)) {
			this.loadAllResourceList();
			
		}
		
		Set<ConfigAttribute> ConfigAttributes = new HashSet<ConfigAttribute>();
		for (String permission:permissionList) {
			SecurityConfig config = new SecurityConfig(permission);
			ConfigAttributes.add(config);
		}
		
		return ConfigAttributes;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		
		return true;
	}

}
