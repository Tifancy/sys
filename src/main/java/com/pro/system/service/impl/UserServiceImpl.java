package com.pro.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.pro.system.entity.User;
import com.pro.system.entity.UserCriteria;
import com.pro.system.exception.ServiceException;
import com.pro.system.mapper.UserMapper;
import com.pro.system.service.UserService;
import com.pro.system.utils.Page;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User loadUserByUsername(String username) throws ServiceException{
		UserCriteria userCriteria =  new UserCriteria();
		userCriteria.createCriteria().andNameEqualTo(username);
		List<User> userList = userMapper.selectByExample(userCriteria);
		if (!CollectionUtils.isEmpty(userList)) {
			return userList.get(0);
		} else {
			throw new ServiceException("not found user");
		}
	}

	@Override
	public Page<User> findUserList(Integer pageSize, Integer pageNum) {
		Page<User> page = new Page<User>(pageNum, pageSize);
		UserCriteria userCriteria = new UserCriteria();
		userCriteria.createCriteria();
		int count = userMapper.countByExample(userCriteria);
		userCriteria.setPage(page);
		List<User> users = userMapper.selectByExample(userCriteria);
		page.setResult(users);
		page.setTotalRecords(count);
		return page;
	}
	
	/***
	 * 检查用户是否存在
	 */
	public boolean checkUser(String userName) {
		
		UserCriteria userCriteria = new UserCriteria();
		userCriteria.createCriteria().andNameEqualTo(userName);
		List<User> userList = this.userMapper.selectByExample(userCriteria);
		if (CollectionUtils.isEmpty(userList)) {
			return true;
		}
		return false;
	}

}
