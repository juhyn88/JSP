package org.jmp.member;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
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
	
	public void disconnect() {
		if(pstmt != null) {			
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {				
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//��� ���� �߰�
	public void addMember(Member member) {
		connDB();	
		String sql = "INSERT INTO member(memberId, passwd, name, gender)  VALUES (?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, member.getMemberId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getGender());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}
	
	//��� ��ü ��ȸ
	public ArrayList<Member> getListAll(){
		ArrayList<Member> list = new ArrayList<>();
		connDB();
		String sql = "SELECT * FROM member";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			while(rs.next()) {
				int id = rs.getInt("memberId");		
				String pw = rs.getString("passwd");
				String name = rs.getString("name");
				Date jDate = rs.getDate("joinDate");
				String gender = rs.getString("gender");
				
				Member member = new Member();
				member.setMemberId(id);
				member.setPasswd(pw);
				member.setName(name);
				member.setJoinDate(jDate);
				member.setGender(gender);
				list.add(member);		
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return list;		
	}
	
	//Ư�� ��� ��ȸ (�� ���)
	public Member getOneDB(int memId) {
		connDB();
		String sql = "SELECT * FROM member WHERE memberId = ? ";
		Member member = new Member();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memId);
			rs = pstmt.executeQuery();		
			rs.next();								
			member.setMemberId(rs.getInt("memberId"));
			member.setPasswd(rs.getString("passwd"));
			member.setName(rs.getString("name"));
			member.setJoinDate(rs.getDate("joinDate"));
			member.setGender(rs.getString("gender"));
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return member;
	}
	
	//��� ���� ���� ����
	public boolean update(Member member) {
		connDB();
			String sql = "UPDATE member SET passwd=?, name=?, gender=? WHERE memberId=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, member.getPasswd());
				pstmt.setString(2, member.getName());
				pstmt.setString(3, member.getGender());
				pstmt.setInt(4, member.getMemberId());
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
	public boolean delete(int memId) {
		connDB();
		String sql = "DELETE FROM member WHERE memberId = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  memId);
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
	public boolean login(int memId, String passwd) {
		connDB();
		String sql = "SELECT memberId, passwd FROM member WHERE memberId=?";
		boolean result =false;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memId);
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