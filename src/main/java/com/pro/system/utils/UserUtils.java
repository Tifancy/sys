package com.pro.system.utils;

import java.util.HashSet;
import java.util.Set;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.CollectionUtils;

import com.pro.system.entity.User;
import com.pro.system.security.SecurityGrantedAuthority;
import com.pro.system.security.SecurityUser;

public class UserUtils {

	
	
	/**
	 * 获取当前用户授权信息
	 * @return
	 */
	public static SecurityUser getCurrentSecurityUser() {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication == null) {
			return null;
		}
		return  (SecurityUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
	}
	
	/***
	 * 获取当前用户信息
	 * @return
	 */
	public static User getCurrentUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication == null) {
			return null;
		}
		SecurityUser securityUser =  (SecurityUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (securityUser == null) {
			
			return null;
		}
		
		return securityUser.getUser();
	}
	
	
	/***
	 * 获取当前用户的角色列表
	 * @return
	 */
	public static Set<String> getCurrentRoleList() {
	 Set<SecurityGrantedAuthority> grantedAuthoritys =	(Set<SecurityGrantedAuthority>) getCurrentSecurityUser().getAuthorities();
	 		Set<String> roleList = new HashSet<String>(0);
		 if (!CollectionUtils.isEmpty(grantedAuthoritys)) {
			
			 for (SecurityGrantedAuthority grantedAuthority : grantedAuthoritys) {
				
				 roleList.add(grantedAuthority.getAuthority());
			}
		}
		
		 return roleList;
		 
	}
}
