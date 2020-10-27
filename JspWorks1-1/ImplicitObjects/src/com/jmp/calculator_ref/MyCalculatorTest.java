package com.jmp.calculator_ref;

public class MyCalculatorTest {

	public static void main(String[] args) {
		MyCalculator calc = new MyCalculator();
		calc.setNum1(10);
		calc.setNum2(4);
		
		int plus = calc.plus();
		System.out.println(plus);

		int minus = calc.minus();
		System.out.println(minus);
		
		int times = calc.times();
		System.out.println(times);
		
		int devide = calc.devide();
		System.out.println(devide);
		
	}

}
