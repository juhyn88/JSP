package stringex;

public class SubstringTest {

	public static void main(String[] args) {
		//substring(int beginIndex)	: �����ε������� ������ ���ڿ� ����
		String str = "unhappy";
		String str2 = str.substring(2);
		System.out.println(str2);
		
		//substring(int begin, int end) : ���ۺ��� (��-1)���� ���ڿ�
		String word = "hamburger";
		String word2 = word.substring(4,8);
		System.out.println(word2);
		
		//IndexOf()�� ���
		String fruit = "C:\\upload";
		String fruit2 = fruit.substring(fruit.indexOf("\\") + 1);
		System.out.println(fruit2);
		
		//lastIndexOf()�� �Բ� ���
		String path = "C:\\upload";
		String result = path.substring(path.lastIndexOf('\\') + 1);
		System.out.println(result);		//upload ����
		
	}

}
