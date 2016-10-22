package com.rain.kbm.dao.impl;

import org.springframework.stereotype.Repository;

import com.rain.core.dao.impl.BaseDaoImpl;
import com.rain.kbm.dao.ChannelDao;

@Repository("channelDao")
public class ChannelDaoImpl extends BaseDaoImpl implements ChannelDao{

	@Override
	public String getChannelTree() {
		String sql = "";
		return null;
	}

	
	
}
