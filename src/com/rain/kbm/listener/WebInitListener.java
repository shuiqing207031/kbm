package com.rain.kbm.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.rain.kbm.util.AppConfig;



public class WebInitListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		String rootPath = arg0.getServletContext().getRealPath("/");
		String appName = arg0.getServletContext().getContextPath();
		rootPath = rootPath.replaceAll("\\\\", "/");
		AppConfig.set(AppConfig.SysConfig.ROOT_PATH, rootPath);
		AppConfig.set(AppConfig.SysConfig.APP_NAME, appName);
	}



}
