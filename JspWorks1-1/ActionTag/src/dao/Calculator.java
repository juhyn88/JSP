package dao;

import java.io.Serializable;

public class Calculator implements Serializable{	//직렬화(현재 클래스 저장)

	private static final long serialVersionUID = 1L;
	//버전 ID
	
	public Calculator() {	//기본 생성자
		
	}
	
	//제곱수 계산 메서드
	public int square(int n) {
		return n * n;
	}

}
