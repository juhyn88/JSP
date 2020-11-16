package org.jmp.jpvoca;

import java.io.Serializable;

public class VocaList implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String kanji;
	private String gana;
	private String imi;
	
	public VocaList() {
		// 기본 생성자
	}

	public String getKanji() {
		return kanji;
	}

	public void setKanji(String kanji) {
		this.kanji = kanji;
	}

	public String getGana() {
		return gana;
	}

	public void setGana(String gana) {
		this.gana = gana;
	}

	public String getImi() {
		return imi;
	}

	public void setImi(String imi) {
		this.imi = imi;
	}
	

	

}
