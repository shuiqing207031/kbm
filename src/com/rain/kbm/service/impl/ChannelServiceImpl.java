package com.rain.kbm.service.impl;

import java.util.List;
import java.util.Map;

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
	public List<Map<String,Object>> queryArticle(Integer chnlId) {
		Article artilce = new Article();
		artilce.setChannelId(chnlId);
		List<Map<String,Object>> list = baseDao.queryForListMap(artilce, "updatetime desc");
		for (Map<String,Object> m : list){
			m.put("isArticle", "Y");
			m.put("treeId", m.get("ARTICLEID"));
			m.put("pId", chnlId);
		}
		return list;
	}

}
