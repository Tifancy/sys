package com.pro.system.web.controller.context;

import org.springframework.core.MethodParameter;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.pro.system.annation.CurrentUser;
import com.pro.system.entity.User;
import com.pro.system.utils.UserUtils;

/***
 * 
 * @author guaoyd
 *
 */
public class CurrentUserMethodArgumentResolver implements
HandlerMethodArgumentResolver {

	

	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		return parameter.hasParameterAnnotation(CurrentUser.class);
	}

	@Override
	public Object resolveArgument(MethodParameter parameter,
			ModelAndViewContainer mavContainer, NativeWebRequest webRequest,
			WebDataBinderFactory binderFactory) throws Exception {
		
		User user = null;
		try {
			
			 user = UserUtils.getCurrentUser();
		} catch (SecurityException e) {
			throw new UsernameNotFoundException("没有登录，请登录！",e);
		}
		return user;
	}

}
