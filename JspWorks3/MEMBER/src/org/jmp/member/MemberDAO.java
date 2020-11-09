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
	
	//사원 정보 추가
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
	
	//사원 전체 조회
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
	
	//특정 사원 조회 (한 사람)
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
	
	//사원 정보 수정 변경
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
	
	//정보 삭제 메서드
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
	
	//사용자 로그인 메서드
	public boolean login(int memId, String passwd) {
		connDB();
		String sql = "SELECT memberId, passwd FROM member WHERE memberId=?";
		boolean result =false;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memId);
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