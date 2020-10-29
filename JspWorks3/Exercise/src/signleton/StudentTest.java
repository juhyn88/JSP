package signleton;

public class StudentTest {

	public static void main(String[] args) {
		Student st1 = new Student();
		System.out.println(st1.getStudentId());
		
		Student st2 = new Student();
		System.out.println(st2.getStudentId());
		
		Student st3 = new Student();
		System.out.println(st3.getStudentId());
	}

}
