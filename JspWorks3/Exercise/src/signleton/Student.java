package signleton;

public class Student {
	private static int serialNum = 100;
	private int studentId;
	
	public Student() {
		serialNum++;			//101
		studentId = serialNum;
	}

	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
}
