package org.jmp.bean;

import java.util.ArrayList;

public class AddrBookDAO {
	//�ڷ� ���� - ArrayList ���
	ArrayList<AddrBook> addrList;
	
	public AddrBookDAO() {
		addrList = new ArrayList<>();
	}
	
	//�ּ� �߰�
	public void addAddress(AddrBook addrbook) {
		addrList.add(addrbook);
	}
	
	//�ּ� ��ü ��ȸ
	public ArrayList<AddrBook> getListAll(){
		return addrList;
	}
}
