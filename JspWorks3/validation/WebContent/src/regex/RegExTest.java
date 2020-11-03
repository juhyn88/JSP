package regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegExTest {

	public static void main(String[] args) {
		//정규 표현식 예제1
		Pattern p = Pattern.compile("a*b")	;		//Pattern클래스 호출 (*-반복)
		Matcher m = p.matcher("aaaaab");		//Matcher클래스 호출
		boolean b1 = m.matches();
		System.out.println(b1);
		
		System.out.println("---------------------------------");
		
		//정규 표현식 예제2
		String pattern = "^[0-9]*$";
		String value = "abc1031";
		
		boolean b2 = Pattern.matches(pattern, value);
		System.out.println(b2);
	}

}
