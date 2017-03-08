package com.fsoft.FormCMS.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DataInput")
public class DataForm {
	private long id;
	private String formData;
	private String formName;
	@Column(name="fornname")
	public String getFormname() {
		return formName;
	}
	public void setFormname(String formname) {
		this.formName = formname;
	}
	private String user;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", unique = true, nullable = false)
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	@Column(name="formdata")
	public String getFormData() {
		return formData;
	}
	public void setFormData(String formData) {
		this.formData = formData;
	}
	@Column(name="user")
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public DataForm(long id, String formData, String user,String formName) {
		super();
		this.formName=formName;
		this.id = id;
		this.formData = formData;
		this.user = user;
	}
	public DataForm() {
		super();
	}
	
}
