package com.rain.kbm.service.impl;

import java.io.File;
import java.util.List;
import java.util.Map;

import com.rain.kbm.util.AppConfig;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rain.core.dao.BaseDao;
import com.rain.kbm.pojo.Article;
import com.rain.kbm.pojo.Channel;
import com.rain.kbm.service.ChannelService;

@Service("chnlService")
public class ChannelServiceImpl implements ChannelService{

	private Logger log = LoggerFactory.getLogger(ChannelServiceImpl.class);
	@Autowired
	private BaseDao baseDao;
	@Override
	public String getChannelTree() {
		Channel channel = new Channel();
		List<Map<String,Object>> list = baseDao.queryForListMap(channel," chnlId asc,sort asc ");
		for (Map<String,Object> m : list){
			m.put("isArticle", "N");
			m.put("treeId", m.get("CHNLID"));
			m.put("pId", m.get("PARENTID"));
		}
		ObjectMapper mapper = new ObjectMapper();
		try {
			String treeData = mapper.writeValueAsString(list);
			return treeData;
		} catch (Exception e) {
			e.printStackTrace();
			log.error("构建频道树时,list转换成JSON字符串出错:{}",e);
			return "[]";
		}
	}
	@Override
	public List<Article> queryArticle(Integer chnlId) {
		Article artilce = new Article();
		artilce.setChannelId(chnlId);
		List<Article> list = baseDao.queryForList(artilce, "updatetime desc");

		//获取其中一张图片作为图标，显示在文章列表页面
		String static_path = AppConfig.get("static_home_path");
		String root_path = AppConfig.get(AppConfig.SysConfig.ROOT_PATH.getKey());
		String app_name = AppConfig.get(AppConfig.SysConfig.APP_NAME.getKey());

		for (Article a :list){
			String imgPath = root_path+static_path+a.getPath()+"/img/";
			File f = new File(imgPath);
			if (f.exists()){
				File[] images = f.listFiles();
				if (images!=null && images.length!=0){
					String imgLinkPath = app_name+static_path+a.getPath()+"/img/"+images[0].getName();
					a.setOneOfImagePath(imgLinkPath);
				}
			}

		}

		return list;
	}

}
