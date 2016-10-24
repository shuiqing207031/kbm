package com.rain.kbm.action;

import java.util.List;
import java.util.Map;

import com.rain.kbm.pojo.Article;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rain.kbm.service.ChannelService;

@Controller
@RequestMapping("/channle")
public class ChannelAction {
	private Logger log = LoggerFactory.getLogger(ChannelAction.class);

	@Autowired
	private ChannelService channelService;

	@RequestMapping(params="view=queryArticle",method=RequestMethod.POST)
	@ResponseBody
	public void queryArticle(Integer chnlId,Model model){
		if (chnlId == null || chnlId == 0){
			log.warn("lack of parameter");
			return;
		}
		List<Article> list = channelService.queryArticle(chnlId);
		model.addAttribute("articles", list);
		model.addAttribute("count",list.size());
		log.info(" the articles count is {}",list.size());
	}

}
