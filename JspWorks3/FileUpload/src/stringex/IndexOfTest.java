package stringex;

public class IndexOfTest {

	public static void main(String[] args) {
		//IndexOf() -> �ε����� ��ȯ(�տ��� ã��)
		String str = "happy";
		System.out.println(str.indexOf('p'));
		
		//lastIndexOf() -> �ڿ��� ã��(ó�������� ����)
		System.out.println(str.lastIndexOf('p'));
		
		//���� ���
		String path = "C:\\upload";
		System.out.println(path.indexOf('\\'));
		System.out.println(path.lastIndexOf('\\'));
		
	}

}
