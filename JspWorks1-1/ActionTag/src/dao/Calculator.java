package dao;

import java.io.Serializable;

public class Calculator implements Serializable{	//����ȭ(���� Ŭ���� ����)

	private static final long serialVersionUID = 1L;
	//���� ID
	
	public Calculator() {	//�⺻ ������
		
	}
	
	//������ ��� �޼���
	public int square(int n) {
		return n * n;
	}

}
