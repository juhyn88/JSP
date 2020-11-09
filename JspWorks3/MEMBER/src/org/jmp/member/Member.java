package org.jmp.member;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{	
	
	private static final long serialVersionUID = 1L;
	
	private int memberId;
	private String passwd;
	private String name;
	private Date joinDate;
	private String gender;
	
	public Member() {	//»ý¼ºÀÚ
				
	}
	
	//Getter, Setter
	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
