package com.demo.Model;

public class user {

	private int user_id;
	private String  user_name;
	private String user_lastname;
	private String user_fullname;
	private String user_email;
	private String user_account;
	private String user_password;
	private String user_createday;
	private String user_photo;
	
	
	
	public user(String user_name, String user_account, String user_password, String user_createday, String user_photo,String user_email) {
		super();
		this.user_name = user_name;
		this.user_account = user_account;
		this.user_password = user_password;
		this.user_createday = user_createday;
		this.user_photo = user_photo;
		this.user_email=user_email;
	}
	public user(int user_id, String user_name, String user_lastname, String user_fullname, String user_email,
			String user_account, String user_password, String user_createday, String user_photo) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_lastname = user_lastname;
		this.user_fullname = user_fullname;
		this.user_email = user_email;
		this.user_account = user_account;
		this.user_password = user_password;
		this.user_createday = user_createday;
		this.user_photo = user_photo;
	}
	public int getUser_id() {
		return user_id;
		
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_lastname() {
		return user_lastname;
	}
	public void setUser_lastname(String user_lastname) {
		this.user_lastname = user_lastname;
	}
	public String getUser_fullname() {
		return user_fullname;
	}
	public void setUser_fullname(String user_fullname) {
		this.user_fullname = user_fullname;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_account() {
		return user_account;
	}
	public void setUser_account(String user_account) {
		this.user_account = user_account;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_createday() {
		return user_createday;
	}
	public void setUser_createday(String user_createday) {
		this.user_createday = user_createday;
	}
	public String getUser_photo() {
		return user_photo;
	}
	public void setUser_photo(String user_photo) {
		this.user_photo = user_photo;
	}
	@Override
	public String toString() {
		return "user [user_id=" + user_id + ", user_name=" + user_name + ", user_lastname=" + user_lastname
				+ ", user_fullname=" + user_fullname + ", user_email=" + user_email + ", user_account=" + user_account
				+ ", user_password=" + user_password + ", user_createday=" + user_createday + ", user_photo="
				+ user_photo + "]";
	}
	
	
	
}
