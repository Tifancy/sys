package com.pro.system.web.controller.context;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;

public class ResourceBeanPostProcessor implements ApplicationListener<ContextRefreshedEvent> {

	
	private final static Logger logger = Logger.getLogger(ResourceBeanPostProcessor.class);
	public void onApplicationEvent(ContextRefreshedEvent event) {
		
		if (event.getApplicationContext().getParent() == null) {//初始化Root 容器
			logger.info("inint Root   Context---> Finished...");	
		}else {//初始化springmvc子容器
			 logger.info("inint SpringMVC   Context---> Finished...");
		}
		
		
	}

	
	

}
