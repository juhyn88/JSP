package filetest;

import java.io.File;
import java.io.IOException;

public class filetest {

	public static void main(String[] args) throws IOException {
		File file = new File("C:\\filetest\\newFile.txt");		//��� ����
		file.createNewFile();														//���� ���� ����
	
		System.out.println(file.isFile());
		System.out.println(file.getName());
		System.out.println(file.getPath());
		System.out.println(file.canRead());
		System.out.println(file.canWrite());
		
		//file.delete();		//���� ����
	}

}
