package com.pro.system.service;

import com.pro.system.entity.User;
import com.pro.system.exception.ServiceException;
import com.pro.system.utils.Page;

public interface UserService {

	/***
	 * 根据用户名获取用户信息
	 * @param username
	 * @return
	 */
	User loadUserByUsername(String username) throws ServiceException;

	/***
	 * 
	 * @param pageSize
	 * @param pageNum
	 * @return
	 */
	Page<User> findUserList(Integer pageSize, Integer pageNum);

	/***
	 * 检查此用户名是否存在
	 * @param userName
	 * @return
	 */
	boolean checkUser(String userName);

}
