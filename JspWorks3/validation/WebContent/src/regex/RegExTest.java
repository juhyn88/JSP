package regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegExTest {

	public static void main(String[] args) {
		//���� ǥ���� ����1
		Pattern p = Pattern.compile("a*b")	;		//PatternŬ���� ȣ�� (*-�ݺ�)
		Matcher m = p.matcher("aaaaab");		//MatcherŬ���� ȣ��
		boolean b1 = m.matches();
		System.out.println(b1);
		
		System.out.println("---------------------------------");
		
		//���� ǥ���� ����2
		String pattern = "^[0-9]*$";
		String value = "abc1031";
		
		boolean b2 = Pattern.matches(pattern, value);
		System.out.println(b2);
	}

}
