package regex;

import java.util.regex.Pattern;

public class RegExTest2 {

	public static void main(String[] args) {
		String name = "¼¼Á¾´ë¿Õ";
		String tel = "010-3355-7979";
		
		//À¯È¿¼º °Ë»ç
		boolean name_check = Pattern.matches("^[°¡-ÆR]*$", name);
		boolean tel_check = Pattern.matches("^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$", tel);
		
		//Ãâ·Â
		System.out.println("ÀÌ¸§ : " + name_check);
		System.out.println("ÀüÈ­¹øÈ£ : " + tel_check);
	}

}
