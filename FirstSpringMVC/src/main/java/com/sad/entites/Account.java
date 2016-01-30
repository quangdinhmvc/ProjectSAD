package com.sad.entites;

// Generated Jan 21, 2016 9:59:44 PM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Account generated by hbm2java
 */
@Entity
@Table(name = "account", catalog = "test")
public class Account implements java.io.Serializable {

	private String account;
	private String password;
	private String fullname;
	private boolean isAdmin;
	private String imageAcc;
	private Set<Message> messages = new HashSet<Message>(0);

	public Account() {
	}

	public Account(String account, String password, String fullname,
			boolean isAdmin) {
		this.account = account;
		this.password = password;
		this.fullname = fullname;
		this.isAdmin = isAdmin;
	}

	public Account(String account, String password, String fullname,
			boolean isAdmin, String imageAcc, Set<Message> messages) {
		this.account = account;
		this.password = password;
		this.fullname = fullname;
		this.isAdmin = isAdmin;
		this.imageAcc = imageAcc;
		this.messages = messages;
	}

	@Id
	@Column(name = "account", unique = true, nullable = false, length = 45)
	public String getAccount() {
		return this.account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	@Column(name = "password", nullable = false, length = 45)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "fullname", nullable = false)
	public String getFullname() {
		return this.fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	@Column(name = "isAdmin", nullable = false)
	public boolean isIsAdmin() {
		return this.isAdmin;
	}

	public void setIsAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	@Column(name = "imageAcc")
	public String getImageAcc() {
		return this.imageAcc;
	}

	public void setImageAcc(String imageAcc) {
		this.imageAcc = imageAcc;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "account")
	public Set<Message> getMessages() {
		return this.messages;
	}

	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}

}