package com.rain.kbm.pojo;

import javax.persistence.Column;
import javax.persistence.Table;

import com.rain.core.pojo.BaseBean;

@Table(name="KBM_CORE_ARTICLE")
public class Article extends BaseBean{
	
	@Column
	private String articleId ;
	
	@Column
	private String  title; 
	
	@Column
	private Integer author; 
	
	@Column
	private String createTime; 
	
	@Column
	private String updateTime; 
	
	@Column
	private String path;
	
	@Column
	private String type; 
	
	@Column
	private String content; 
	
	@Column
	private String keywords; 
	
	@Column
	private Integer level ;
	
	@Column
	private Integer weight; 
	
	@Column
	private Integer channelId;
	
	@Column
	private Integer status;
	
	public String getArticleId() {
		return articleId;
	}
	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getAuthor() {
		return author;
	}
	public void setAuthor(Integer author) {
		this.author = author;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public Integer getWeight() {
		return weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public Integer getChannelId() {
		return channelId;
	}
	public void setChannelId(Integer channelId) {
		this.channelId = channelId;
	}
	
	
	@Override
	public String getPKName() {
		return "articleId";
	}
	@Override
	public String getSequenceName() {
		return null;
	}
	@Override
	public String getPKValue() {
		return articleId;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
}
