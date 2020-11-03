package regex;

import java.util.regex.Pattern;

public class RegExTest2 {

	public static void main(String[] args) {
		String name = "�������";
		String tel = "010-3355-7979";
		
		//��ȿ�� �˻�
		boolean name_check = Pattern.matches("^[��-�R]*$", name);
		boolean tel_check = Pattern.matches("^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$", tel);
		
		//���
		System.out.println("�̸� : " + name_check);
		System.out.println("��ȭ��ȣ : " + tel_check);
	}

}
