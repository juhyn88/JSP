package org.jmp.bean;

import java.util.ArrayList;

public class AddrBookDAO {
	//자료 구조 - ArrayList 사용
	ArrayList<AddrBook> addrList;
	
	public AddrBookDAO() {
		addrList = new ArrayList<>();
	}
	
	//주소 추가
	public void addAddress(AddrBook addrbook) {
		addrList.add(addrbook);
	}
	
	//주소 전체 조회
	public ArrayList<AddrBook> getListAll(){
		return addrList;
	}
}
