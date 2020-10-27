package org.jmp.employee;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class EmployeeDAO {
	private static String driver = "oracle.jdbc.driver.OracleDriver";
	private static String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	private static String user = "hr";
	private static String pwd = "12345";
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//DB 연결 메서드
	public void connDB() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pwd);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//네트워크이므로 자원을 사용후 닫아야 함
	public void disconnect() {
		if(pstmt != null) {			//쿼리 수행이 되고 있다면
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {				//연결이 되어있다면
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//사원 정보 추가
	public void addEmployee(Employee employee) {
		connDB();	//접속 메서드 호출
		String sql = "INSERT INTO t_employee VALUES (?, ?, ?, SYSDATE)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, employee.getCompanyId());
			pstmt.setString(2, employee.getPasswd());
			pstmt.setString(3, employee.getName());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}
	
	//사원 전체 조회
	public ArrayList<Employee> getListAll(){
		ArrayList<Employee> list = new ArrayList<>();
		connDB();
		String sql = "SELECT * FROM t_employee ORDER BY companyId";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	//쿼리 수행
			while(rs.next()) {
				int id = rs.getInt("companyId");		//DB에서 가져오기
				String pw = rs.getString("passwd");
				String name = rs.getString("name");
				Date jDate = rs.getDate("joinDate");
				
				Employee employee = new Employee();
				employee.setCompanyId(id);
				employee.setPasswd(pw);
				employee.setName(name);
				employee.setJoinDate(jDate);
				
				list.add(employee);		//arrayList에 담기
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return list;		//list로 반환
	}
	
	//특정 사원 조회 (한 사람)
	public Employee getOneDB(int comId) {
		connDB();
		String sql = "SELECT * FROM t_employee WHERE companyId = ? ";
		Employee employee = new Employee();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comId);
			rs = pstmt.executeQuery();		//조회할때 executeQuery() 사용
			rs.next();								//한 사람이므로 rs.next() 사용
			employee.setCompanyId(rs.getInt("companyId"));
			employee.setPasswd(rs.getString("passwd"));
			employee.setName(rs.getString("name"));
			employee.setJoinDate(rs.getDate("joinDate"));
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return employee;
	}
	
	//사원 정보 수정 변경
	public boolean update(Employee employee) {
		connDB();
			String sql = "UPDATE t_employee SET passwd=?, name=? WHERE companyId=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, employee.getPasswd());
				pstmt.setString(2, employee.getName());
				pstmt.setInt(3, employee.getCompanyId());
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}finally {
				disconnect();
			}
			return false;
	}
	
	//정보 삭제 메서드
	public boolean delete(int comId) {
		connDB();
		String sql = "DELETE FROM t_employee WHERE companyId = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  comId);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}finally {
			disconnect();
		}
		return true;
	}
	
	//사용자 로그인 메서드
	public boolean login(int comId, String passwd) {
		connDB();
		String sql = "SELECT companyId, passwd FROM t_employee WHERE companyId=?";
		boolean result =false;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comId);
			rs = pstmt.executeQuery();			//사번, 비밀번호 db에서 가져와서 처리
			rs.next();
			if(rs.getString("passwd").equals(passwd)) {
				result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}finally {
			disconnect();
		}
		return result;
	}
}