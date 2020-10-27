package org.jmp.employee;

import java.io.Serializable;
import java.sql.Date;

public class Employee implements Serializable{	//클래스 직렬화
	/**
	 * 사원 정보 클래스
	 * 작성일 : 2020. 10. 22
	 * 작성자 :
	 */	
	private static final long serialVersionUID = 1L;
	
	private int companyId;
	private String passwd;
	private String name;
	private Date joinDate;
	
	public Employee() {	//생성자
				
	}
	
	//Getter, Setter
	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
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
	
	
}
