package org.jmp.member;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	ResultSet rs = null;
	DataSource ds = null;
	
	//db접속
	private void connDB() {
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:/comp/env");
			ds = (DataSource) envCtx.lookup("jdbc/oracle");
			
			conn = ds.getConnection();
			System.out.println("DB 연결 성공");
			
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//db종료
	private void disconnect() {
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
	
	//멤버 정보 추가
	public void addMember(Member member) {
		connDB();
		String sql = "INSERT INTO t_member (memberId, passwd, name, joinDate, gender) VALUES(?, ?, ?, sysdate, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemberId());
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
	
	//멤버 전체 조회
	public ArrayList<Member> getListAll(){
		ArrayList<Member> list = new ArrayList<>();
		connDB();
		String sql = "SELECT * FROM t_member ORDER BY joinDate";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("memberId");
				String pw = rs.getString("passwd");
				String name = rs.getString("name");
				Date jDate = rs.getDate("joinDate");
				String gender= rs.getString("gender");
				
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
		} finally {
			disconnect();
		}
		return list;
	}
	
	//특정 멤버 조회
	public Member getDB(String memId) {
		connDB();
		String sql = "SELECT * FROM t_member WHERE memberId = ?";
		Member member = new Member();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			rs = pstmt.executeQuery();
			rs.next();
			member.setMemberId(rs.getString("memberId"));
			member.setPasswd(rs.getString("passwd"));
			member.setName(rs.getString("name"));
			member.setJoinDate(rs.getDate("joinDate"));
			member.setGender(rs.getString("gender"));
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return member;
	}
	
	//수정, 변경처리
	public boolean update(Member member) {
		connDB();
		String sql = "UPDATE t_member SET passwd=?, name=?, gender=? WHERE memberId=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getPasswd());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getGender());
			pstmt.setString(4, member.getMemberId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}
	//특정 사원 삭제
	public boolean delete(String memId) {
		connDB();
		String sql = "DELETE FROM t_member WHERE memberId = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}
	
	//로그인체크
	public int login(String memId, String pwd) {
		connDB();
		String sql = "SELECT memberId, passwd FROM t_member WHERE memberId = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);	
			rs = pstmt.executeQuery();
			//겉 if문 아이디 일치 불일치 확인
			if(rs.next()) {
				String dbPw = rs.getString("passwd"); // DB에 넣어놓은 패스워드
				
				//속 if문 비밀번호 일치 불일치 확인
				if(dbPw.equals(pwd)) {
					return 1;	//비밀번호 일치
				}else {
					return 0; //비밀번호 불일치
				}
			}else {
				return -1;	//아이디 불일치
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return -2; //데이터베이스 오류
	}
}
