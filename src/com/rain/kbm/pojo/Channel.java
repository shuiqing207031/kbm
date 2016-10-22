package com.rain.kbm.pojo;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Table;

import com.rain.core.pojo.BaseBean;

@Table(name="KBM_CORE_CHANNEL")
public class Channel extends BaseBean{
	@Column
	private String chnlId;
	@Column
	private String  chnlName;
	@Column
	private Integer secret;
	@Column
	private Integer parentId;
	@Column
	private Integer sort;
	@Column
	private String path;
	@Column
	private String description;
	
	public String getChnlId() {
		return chnlId;
	}

	public void setChnlId(String chnlId) {
		this.chnlId = chnlId;
	}

	public String getChnlName() {
		return chnlName;
	}

	public void setChnlName(String chnlName) {
		this.chnlName = chnlName;
	}


	public Integer getSecret() {
		return secret;
	}

	public void setSecret(Integer secret) {
		this.secret = secret;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	@Override
	public String getPKName() {
		return "CHNLID";
	}

	@Override
	public String getSequenceName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPKValue() {
		return chnlId;
	}

	
}
