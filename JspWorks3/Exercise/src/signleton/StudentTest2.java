package signleton;

public class StudentTest2 {

	public static void main(String[] args) {
		School school = School.getInstance();
		
		Student st1 = school.createId();
		System.out.println("�л� 1 : " + st1.getStudentId());
		
		Student st2 = school.createId();
		System.out.println("�л� 2 : " + st2.getStudentId());
		
		Student st3 = school.createId();
		System.out.println("�л� 3 : " + st3.getStudentId());
	}

}
