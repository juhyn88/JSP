package com.jmp.calculator_jsp;

public class CalculatorBean {
	private int num1;
	private int num2;
	private String op;	//������(+ - * /)
	private int result;
	
	public CalculatorBean(int num1, int num2, String op) {
		this.num1 = num1;
		this.num2 = num2;
		this.op = op;
		calculate();
	}
	public int calculate() {
		if(op.equals("+")) {
			result = num1 + num2;
		}else if(op.equals("-")) {
			result = num1 - num2;
		}else if(op.equals("*")) {
			result = num1 * num2;
		}else if(op.equals("/")) {
			result = num1 / num2;
		}
		return result;
	}
	
	public int getResult() {	//����� ��ȯ �޼ҵ�
		return result;
	}
}
