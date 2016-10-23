package com.rain.kbm.service.impl;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rain.core.dao.BaseDao;
import com.rain.core.util.StringUtils;
import com.rain.core.util.net.HttpImage;
import com.rain.kbm.pojo.Article;
import com.rain.kbm.service.ArticleService;
import com.rain.kbm.util.AppConfig;
@Service
public class ArticleServiceImpl implements ArticleService{
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private SimpleDateFormat dateformate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	@Autowired
	private BaseDao baseDao;
	@Override
	public void insertOrUpdateArticle(Article article) throws IOException {
		String now = dateformate.format(new Date());
		
		
		String articleId  = article.getArticleId();
		if (StringUtils.isEmpty(articleId)){
			articleId = UUID.randomUUID().toString();
			article.setArticleId(articleId);
			article.setCreateTime(now);
			article.setUpdateTime(now);
			article.setAuthor(123);
			baseDao.insert(article);
			logger.info("新增文章ID:{},{}",article.getArticleId(),article.getTitle());
		} else {
			article.setUpdateTime(now);
			baseDao.update(article);
			logger.info("更新文章:{},{}",article.getArticleId(),article.getTitle());
		}
		createArticleHtml(article);
		logger.info("文章{}html创建成功!",article.getTitle());
	}
	
	
	private void createArticleHtml(Article article) throws IOException{
		article.trimAndEmptyDefault("");
		String expression = AppConfig.get("image_expression");
		String image_src_expression = AppConfig.get("image_src_expression");
		String static_path = AppConfig.get("static_home_path");
		String root_path = AppConfig.get(AppConfig.SysConfig.ROOT_PATH.getKey());
		String app_name = AppConfig.get(AppConfig.SysConfig.APP_NAME.getKey());
		SimpleDateFormat f = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		
		String title = article.getTitle();
		String path = StringUtils.isEmpty(article.getPath()) ? "/" :article.getPath();
		
		
		String imgPath = root_path+static_path+path+"/img/";
		String htmlPath = root_path+static_path+path+"/html/";
		String imgLinkPath = app_name+static_path+path+"/img/";

		File file = new File(htmlPath,title+".html");
		if(file.exists()){
			file.delete();
		}
		file.createNewFile();
		
		String content = article.getContent();
		String articleId = article.getArticleId();
		Pattern p = Pattern.compile(expression);
		Matcher m = p.matcher(content);
		Set<String> imgUrlSet = new HashSet<String>();
		while(m.find()){
			String str = m.group();
			Pattern ps = Pattern.compile(image_src_expression);
			Matcher m1 = ps.matcher(str);
			while(m1.find()){
				String httpUrl = m1.group(1);
				imgUrlSet.add(httpUrl);
			}
		}
		if (imgUrlSet.size()!=0){
			File imgDirectory = new File(imgPath,articleId);
			if(imgDirectory.exists())
				imgDirectory.delete();
			imgDirectory.mkdirs();
		}
		
		for (String imgUrl : imgUrlSet){
			String fileName = f.format(new Date());
			HttpImage.ImageMsg imgMsg = HttpImage.downLoadHttpImage(imgUrl, imgPath+articleId,fileName);
			if (imgMsg == HttpImage.ImageMsg.IMAGE_CREATE_SUCCESS){
				String localSrc = imgLinkPath+articleId+"/"+fileName;
				content = content.replace(imgUrl, localSrc);
			}
		}
		article.setContent(content);
		FileWriter writer = new FileWriter(file);
		writer.write(content);
		writer.close();
	}

	private void deleteArticleHtml(Article article){
		String path = article.getPath();
		String static_path = AppConfig.get("static_home_path");
		String root_path = AppConfig.get(AppConfig.SysConfig.ROOT_PATH.getKey());
		String imgPath = root_path+static_path+path+"/img/";
		String htmlPath = root_path+static_path+path+"/html/";
		//删除html
		File htmlFile = new File(htmlPath,article.getTitle()+".html");
		if (htmlFile.exists()){
			htmlFile.delete();
		}
		//删除img
		File imgDirectory = new File(imgPath,article.getArticleId());
		if(imgDirectory.exists())
			imgDirectory.delete();
	}
	
	
	
	@Override
	public void updateArticle(Article article) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Article queryByArticleId(String articleId){
		Article article = new Article();
		article.setArticleId(articleId);
		List<Article> list = baseDao.queryForList(article);
		return list.size()==1 ? list.get(0) : null;
	}

	
	public static void main(String[] args) {
		String ps ="<p> <img src=\"http://img2.tuicool.com/e67BJr.jpg%21web\" alt=\"\" class=\"alignCenter\"> </p>";
		System.out.println(ps.replace("\"http://img2.tuicool.com/e67BJr.jpg%21web\"","kms"));
	}
}
