package com.pro.system.security;

import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.util.Assert;

/**
 * 角色权限
 * @author guaoyd
 *
 */
public class SecurityGrantedAuthority implements GrantedAuthority {

		private static final long serialVersionUID = -6102230294822629311L;
		private final String role;
	 	private Set<String> permissionList;
	 	
	    public Set<String> getPermissionList() {
			return permissionList;
		}

		public void setPermissionList(Set<String> permissionList) {
			this.permissionList = permissionList;
		}

		public SecurityGrantedAuthority(String role) {
	        Assert.hasText(role, "A granted authority textual representation is required");
	        this.role = role;
	    }

	    public String getAuthority() {
	        return role;
	    }

	    public boolean equals(Object obj) {
	        if (this == obj) {
	            return true;
	        }

	        if (obj instanceof SimpleGrantedAuthority) {
	            return role.equals(((SecurityGrantedAuthority) obj).role);
	        }

	        return false;
	    }

	    public int hashCode() {
	        return this.role.hashCode();
	    }

	    public String toString() {
	        return this.role;
	    }
	

}
