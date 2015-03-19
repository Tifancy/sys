package com.pro.system.web.controller;



import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pro.system.annation.CurrentUser;
import com.pro.system.entity.Resource;
import com.pro.system.entity.User;
import com.pro.system.service.ResourceService;

@RequestMapping("/admin")
@Controller
public class AdminController {

	
	private final static Logger logger = Logger.getLogger(AdminController.class);
	
	@Autowired
	private ResourceService resourceService;
	@RequestMapping("/index")
	public ModelAndView index(@RequestParam(value="moduleId",defaultValue="1")Integer moduleId,@CurrentUser User user) {
		ModelAndView modelAndView = new ModelAndView("admin/index");
		
		logger.info("进入后台管理首页....");
		List<Resource> moduleList = this.resourceService.findModuleListUserId(user.getId());
		List<Resource> menuList = this.resourceService.findMenuByModuleIdAndUserId(moduleId,user.getId());
		modelAndView.addObject("moduleList", moduleList);
		modelAndView.addObject("menuList", menuList);
		modelAndView.addObject("defaultModule", moduleId);
		return modelAndView;
		
	}
	
	
}
