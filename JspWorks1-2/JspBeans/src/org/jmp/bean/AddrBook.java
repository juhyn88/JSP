package org.jmp.bean;

import java.io.Serializable;

public class AddrBook implements Serializable{

	private static final long serialVersionUID = 1L;
	
	//멤버 변수
	private String username;		//jsp의 username과 같다.
	private String tel;
	private String email;
	private String sex;
	
	//Getter/Setter -> 필수적으로 만들어야함(접근하지 않아도)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	
	
}
