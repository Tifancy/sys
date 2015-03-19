package com.pro.system.web.controller;

import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pro.system.entity.User;
import com.pro.system.service.UserService;
import com.pro.system.utils.Page;
import com.pro.system.utils.Result;

/**
 * 用户管理界面
 * @author guaoyd
 *
 */
@Controller
@RequestMapping("/admin/user")
public class AdminUserController {

	
	private final static Logger logger = Logger.getLogger(AdminUserController.class);
	
	@Autowired
	private UserService userService;
	/***
	 * 用户管理页面
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView index(@RequestParam(defaultValue="20")Integer pageSize,@RequestParam(defaultValue="0")Integer pageNum) {
		logger.info("进入用户管理模块....");
		ModelAndView modelAndView = new ModelAndView("admin/user/index");
		Page<User> page = this.userService.findUserList(pageSize,pageNum);
		modelAndView.addObject("page", page);
		return modelAndView;
	}
	/***
	 * 用户管理页面
	 * @return
	 */
	@RequestMapping("/addUser")
	public ModelAndView addUser() {
		logger.info("进入新增用户....");
		ModelAndView modelAndView = new ModelAndView("admin/user/addUser");
		return modelAndView;
	}
	
	@RequestMapping("/checkUserName")
	public Result checkUserName(String name) {
		
		Result rs = new Result();
		
		if (StringUtils.isBlank(name)) {
			
			rs.setMessage("请输入用户名");
			return rs;
		}
		try {
			boolean has = this.userService.checkUser(name);
			if (has) {
				rs.setSuccess(false);
				rs.setMessage("此用户名已经存在！");
			}
			rs.setSuccess(true);
		} catch (Exception e) {
			rs.setMessage("检查用户出错");
			logger.info("检查用户出错!", e);
		}
		
		return rs;
	}
}
