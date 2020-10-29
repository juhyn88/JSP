package signleton;

public class School {
	private static School instance = new School();
	
	private School() {			//������ �� ������ ���� ����
		
	}
	
	public static School getInstance() {
		//instance = new School();
		return instance;
	}
	
	public Student createId() {
		Student student = new Student();
		return student;
	}
}
