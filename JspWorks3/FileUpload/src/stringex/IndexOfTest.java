package stringex;

public class IndexOfTest {

	public static void main(String[] args) {
		//IndexOf() -> 인덱스를 반환(앞에서 찾음)
		String str = "happy";
		System.out.println(str.indexOf('p'));
		
		//lastIndexOf() -> 뒤에서 찾음(처음나오는 문자)
		System.out.println(str.lastIndexOf('p'));
		
		//파일 경로
		String path = "C:\\upload";
		System.out.println(path.indexOf('\\'));
		System.out.println(path.lastIndexOf('\\'));
		
	}

}
