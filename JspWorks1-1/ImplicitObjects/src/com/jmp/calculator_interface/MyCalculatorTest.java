package com.jmp.calculator_interface;

public class MyCalculatorTest {

	public static void main(String[] args) {
		MyCalculator calc = new MyCalculator();
		
		int plus = calc.add(20, 4);
		int minus = calc.sub(20, 4);
		int times = calc.mul(20, 4);
		int divide = calc.div(20, 4);
		
		System.out.println(plus);
		System.out.println(minus);
		System.out.println(times);
		System.out.println(divide);
	}

}
