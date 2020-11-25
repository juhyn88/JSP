package com.model;

public class LoginBean {
	private String id;
	private String passwd;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public boolean validate() {
		if(id.equals("admin") && passwd.equals("0000"))
			return true;
		else
			return false;
	}
}
