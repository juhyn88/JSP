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
	
	//DB ���� �޼���
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
	
	//��Ʈ��ũ�̹Ƿ� �ڿ��� ����� �ݾƾ� ��
	public void disconnect() {
		if(pstmt != null) {			//���� ������ �ǰ� �ִٸ�
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {				//������ �Ǿ��ִٸ�
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//��� ���� �߰�
	public void addEmployee(Employee employee) {
		connDB();	//���� �޼��� ȣ��
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
	
	//��� ��ü ��ȸ
	public ArrayList<Employee> getListAll(){
		ArrayList<Employee> list = new ArrayList<>();
		connDB();
		String sql = "SELECT * FROM t_employee ORDER BY companyId";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	//���� ����
			while(rs.next()) {
				int id = rs.getInt("companyId");		//DB���� ��������
				String pw = rs.getString("passwd");
				String name = rs.getString("name");
				Date jDate = rs.getDate("joinDate");
				
				Employee employee = new Employee();
				employee.setCompanyId(id);
				employee.setPasswd(pw);
				employee.setName(name);
				employee.setJoinDate(jDate);
				
				list.add(employee);		//arrayList�� ���
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return list;		//list�� ��ȯ
	}
	
	//Ư�� ��� ��ȸ (�� ���)
	public Employee getOneDB(int comId) {
		connDB();
		String sql = "SELECT * FROM t_employee WHERE companyId = ? ";
		Employee employee = new Employee();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comId);
			rs = pstmt.executeQuery();		//��ȸ�Ҷ� executeQuery() ���
			rs.next();								//�� ����̹Ƿ� rs.next() ���
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
	
	//��� ���� ���� ����
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
	
	//���� ���� �޼���
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
	
	//����� �α��� �޼���
	public boolean login(int comId, String passwd) {
		connDB();
		String sql = "SELECT companyId, passwd FROM t_employee WHERE companyId=?";
		boolean result =false;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comId);
			rs = pstmt.executeQuery();			//���, ��й�ȣ db���� �����ͼ� ó��
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