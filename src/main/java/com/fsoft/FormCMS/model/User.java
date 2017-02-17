package com.fsoft.FormCMS.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "User")
public class User {
	private long id;
	private String account;
	private String fullname;
	private Date birthday;
	private String role;
	private String password;
	

	public User(long id, String account, String fullname, Date birthday, String role, String password) {
		super();
		this.id = id;
		this.account = account;
		this.fullname = fullname;
		this.birthday = birthday;
		this.role = role;
		this.password = password;
	}
	@Column(name="password")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", unique = true, nullable = false)
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	@Column(name="account",unique=true,nullable=false,length=10)
	public String getAccount() {
		return account;
	}
	
	public void setAccount(String account) {
		this.account = account;
	}
	@Column(name="fullname",nullable=false,length=100)
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="birthday")
	@JsonFormat(pattern="yyyy-MM-dd")
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	@Column(name="role")
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public User() {
		super();
	}
	
}
