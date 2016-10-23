package com.rain.kbm.service;

import java.util.List;
import java.util.Map;

import com.rain.kbm.pojo.Article;


public interface ChannelService {

	public String getChannelTree();
	
	public List<Article> queryArticle(Integer chnlId);
	
}
