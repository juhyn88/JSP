package org.jmp.employee;

import java.io.Serializable;
import java.sql.Date;

public class Employee implements Serializable{	//Ŭ���� ����ȭ
	/**
	 * ��� ���� Ŭ����
	 * �ۼ��� : 2020. 10. 22
	 * �ۼ��� :
	 */	
	private static final long serialVersionUID = 1L;
	
	private int companyId;
	private String passwd;
	private String name;
	private Date joinDate;
	
	public Employee() {	//������
				
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
