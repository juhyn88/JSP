package signleton;

public class School {
	private static School instance = new School();
	
	private School() {			//생성할 수 없도록 접근 제한
		
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
