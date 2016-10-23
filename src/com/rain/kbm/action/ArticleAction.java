package com.rain.kbm.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rain.kbm.pojo.Article;
import com.rain.kbm.service.ArticleService;

@Controller
public class ArticleAction {
	private Logger log = LoggerFactory.getLogger(ArticleAction.class);
	
	@Autowired
	private ArticleService articleService;
	
	/**
	 * 新增文章
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value="/addArticle")
	public String addArticle(Article article,Model model,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException{
		try {
			article.trimAndEmptyDefault("");
			article.setContent(URLDecoder.decode(article.getContent(),"UTF-8"));
			articleService.insertOrUpdateArticle(article);
		} catch (IOException e) {
			model.addAttribute("errorMsg", "");
			e.printStackTrace();
		}
		return "redirect:/article.do?view=view&articleId="+article.getArticleId();
	}
	
	/**
	 * 修改文章
	 */
	public String  updateArticle(Article article,HttpServletRequest request,HttpServletResponse response){
		return null;
	}
	
	/**
	 * 删除文章
	 */
	public String deleteArticle(Article article,HttpServletRequest request,HttpServletResponse response){
		
		return null;
	}
	
	/**
	 * 查看文章
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value="article",params="view=view")
	public String viewArticle(String articleId,Model model,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException{
		if (articleId == null)
			return "";
		articleId = articleId.trim();
		Article article = articleService.queryByArticleId(articleId);
		model.addAttribute("article", article);
		return "/doc/article";
	}
	
	/**
	 * 
	 */
	@RequestMapping(value="article",params="view=edit" )
	public String editArticle(ModelMap m,String articleId,HttpServletRequest request,HttpServletResponse response){
		log.debug(" enter edit article view ...and parmas articleId="+articleId);
		Article article = new Article();
		if (articleId != null){
			article = articleService.queryByArticleId(articleId);
		} 
		m.addAttribute("article", article);
		return "/doc/articleEdit.ftl";
	}
	
	
	

}
