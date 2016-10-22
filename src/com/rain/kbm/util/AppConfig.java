package com.rain.kbm.util;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import com.rain.core.util.PropertiesUtil;

public class AppConfig {
	private static String appConfig = "app.properties";
	private static Map<String,String> configMap = null;
	public static  enum SysConfig{
		ROOT_PATH("ROOT_PATH"),APP_NAME("APP_NAME");
		private String key;
		private SysConfig(String key){
			this.key = key;
		}
		public String getKey(){
			return this.key;
		}
	};
	
	static{
		configMap = new HashMap<String,String>();
		String path =AppConfig.class.getResource("/").getPath();
		File f = new File(path,appConfig);
		configMap.putAll(PropertiesUtil.resolveProperties(f));
		
	}
	
	public static String get(String key){
		return configMap.get(key);
	}
	
	public static void set(SysConfig s,String value){
		configMap.put(s.getKey(), value);
	}
}
