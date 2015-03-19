package com.pro.system.security;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.util.CollectionUtils;

import com.pro.system.entity.Resource;
import com.pro.system.entity.Role;
import com.pro.system.entity.User;
import com.pro.system.service.SecurityService;
import com.pro.system.service.UserService;

/***
 * 用户认证服务类
 * @author guaoyd
 *
 */
public class SecurityUserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserService userService;
	
	@Autowired
	private SecurityService securityService;
	
	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		SecurityUser securityUser = null;
		User user = null;
		try {
			user = userService.loadUserByUsername(username);
		} catch (Exception e) {
				throw new UsernameNotFoundException(" ERROR not found user!");
		}
		if (user == null) {
			
			throw new UsernameNotFoundException("not found user!");
		}
		if (user.getState() == 1) {
			 throw new RuntimeException("User hasn't been actived!");
		}
		
		securityUser = new SecurityUser();
		securityUser.setUsername(user.getName());
		securityUser.setPassword(user.getPassword());
		securityUser.setCredentialsNonExpired(true);
		securityUser.setAccountNonExpired(true);
		securityUser.setAccountNonLocked(true);
		securityUser.setEnabled(true);
		securityUser.setUser(user);
		securityUser.setNickName(user.getNickName());
		List<Role> roles = this.securityService.findRoleListByUserId(user.getId());
		 Set<SecurityGrantedAuthority> authorities = new HashSet<SecurityGrantedAuthority>();
		if (!CollectionUtils.isEmpty(roles)) {
			
			for (Role role : roles) {
				SecurityGrantedAuthority authority = new SecurityGrantedAuthority(role.getName());
				Set<String> permissionList = new HashSet<String>();
				List<Resource> resourceList = this.securityService.findResourceListByRoleId(role.getId());
				if (!CollectionUtils.isEmpty(resourceList)) {
					for (Resource resource : resourceList) {
						permissionList.add(resource.getUrl());
					}
					
				}
				authority.setPermissionList(permissionList);
				authorities.add(authority);
			}
		}
		
		securityUser.setAuthorities(authorities);
		
		return securityUser;
	}
	
}
