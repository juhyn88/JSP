package org.jmp.dbtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JspDBTest {
	private static String driver = "oracle.jdbc.driver.OracleDriver";
	private static String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	private static String user = "hr";
	private static String pwd = "12345";
	
	public static void main(String[] args) {
		Connection conn = null;
		Statement stmt =null;
		ResultSet rs = null;		//��ȸ�� �ʿ� Ŭ����
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pwd);
			System.out.println("HRDB�� ���� ����");
			
			//����߰�
			String query2 = "INSERT INTO t_employee VALUES (2003, 'xyz123', '��浿', SYSDATE)";
			stmt = conn.createStatement();
			stmt.executeUpdate(query2);	//update ����
			System.out.println(query2);				
			
			//HRDB�� ��� ��ȸ
			String query1 = "SELECT * FROM t_employee ORDER BY companyId";
			stmt = conn.createStatement();	//sql�� ó���� ��ü ����
			rs = stmt.executeQuery(query1);	//��ȸ Ŀ�� ����
			
			while(rs.next()) {
				System.out.println(rs.getInt("companyId"));
				System.out.println(rs.getString("passwd"));
				System.out.println(rs.getString("name"));
				System.out.println(rs.getDate("joinDate"));
			}					
			
			rs.close();
			stmt.close();
			conn.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
