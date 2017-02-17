package com.fsoft.FormCMS.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Form")
public class Form {
	private long id;
	private String name;
	private String formdata;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", unique = true, nullable = false)
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	@Column(name="name",unique=true,length=50)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name="formdata")
	public String getFormdata() {
		return formdata;
	}
	public void setFormdata(String formdata) {
		this.formdata = formdata;
	}
	public Form(long id, String name, String formdata) {
		super();
		this.id = id;
		this.name = name;
		this.formdata = formdata;
	}
	public Form() {
		super();
	}
	
}
