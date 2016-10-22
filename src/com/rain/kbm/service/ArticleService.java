package com.rain.kbm.service;

import java.io.IOException;

import com.rain.kbm.pojo.Article;

public interface ArticleService {

	public void insertOrUpdateArticle(Article article)throws IOException;
	
	public void updateArticle(Article article);
	
	public Article queryByArticleId(String articleId);
	
}
