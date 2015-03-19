package com.pro.system.security;

import java.util.Collection;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.pro.system.entity.User;

/**
 * @author guaoyd
 *
 */
public class SecurityUser implements UserDetails {
	
	private static final long serialVersionUID = 7936852882755827145L;
		private String password;
	    private  String username;
	    private  Set<SecurityGrantedAuthority> authorities;
	    private  boolean accountNonExpired;
	    private  boolean accountNonLocked;
	    private  boolean credentialsNonExpired;
	    private  boolean enabled;
	    private  String nickName;
	    private User user;
	    
		public void setUsername(String username) {
			this.username = username;
		}
		public void setAuthorities(Set<SecurityGrantedAuthority> authorities) {
			this.authorities = authorities;
		}
		public void setAccountNonExpired(boolean accountNonExpired) {
			this.accountNonExpired = accountNonExpired;
		}
		public void setAccountNonLocked(boolean accountNonLocked) {
			this.accountNonLocked = accountNonLocked;
		}
		public void setCredentialsNonExpired(boolean credentialsNonExpired) {
			this.credentialsNonExpired = credentialsNonExpired;
		}
		public void setEnabled(boolean enabled) {
			this.enabled = enabled;
		}
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		@Override
		public Collection<? extends GrantedAuthority> getAuthorities() {
			return authorities;
		}
		@Override
		public String getPassword() {
			return password;
		}
		@Override
		public String getUsername() {
			return username;
		}
		@Override
		public boolean isAccountNonExpired() {
			return accountNonExpired;
		}
		@Override
		public boolean isAccountNonLocked() {
			return accountNonLocked;
		}
		@Override
		public boolean isCredentialsNonExpired() {
			return credentialsNonExpired;
		}
		@Override
		public boolean isEnabled() {
			return enabled;
		}
		public String getNickName() {
			return nickName;
		}
		public void setNickName(String nickName) {
			this.nickName = nickName;
		}
		@Override
		public String toString() {
			return "SecurityUser [password=" + password + ", username="
					+ username + ", authorities=" + authorities
					+ ", accountNonExpired=" + accountNonExpired
					+ ", accountNonLocked=" + accountNonLocked
					+ ", credentialsNonExpired=" + credentialsNonExpired
					+ ", enabled=" + enabled + ", nickName=" + nickName
					+ ", user=" + user + "]";
		}
		
	
	
}
