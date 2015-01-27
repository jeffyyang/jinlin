package com.jlinfo.admin.model;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Action implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3714952917220656535L;
	private int id;
	private int parentId;
	private String name;
	private String code;
	private String desc;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
		
	}
	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

}
