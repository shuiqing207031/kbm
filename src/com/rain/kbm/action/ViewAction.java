package com.rain.kbm.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rain.kbm.service.ChannelService;

@Controller
public class ViewAction {
	
	private Logger log = LoggerFactory.getLogger(ViewAction.class);
	
	@Autowired 
	private ChannelService chnlService;
	
	@RequestMapping(value="myHome")
	public String toIndex(ModelMap m,HttpServletRequest request,HttpServletResponse response){
		log.debug(" enter index view ...");
		return "/myHome";
	}
	
	@RequestMapping(value="search")
	public String search(ModelMap m,HttpServletRequest request,HttpServletResponse response){
		log.debug(" enter search view ...");
		return "/search";
	}
	
	
	@RequestMapping(value="index")
	public String toHome(ModelMap m,HttpServletRequest request,HttpServletResponse response){
		log.debug(" enter home view ...");
		return "/index";
	}
	
	
	//文库
	@RequestMapping(value="articleBase")
	public String articleBase(ModelMap m){
		log.info("request articleBase 111");
		String treeData = chnlService.getChannelTree();
		m.addAttribute("treeData", treeData);
		log.info("response treeData1:{}",treeData);
		return "/doc/articleBase";
	}
}
