package org.jmp.board;

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

public class BoardDAO {
	
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
		
		//새글 추가
		public int writing(String title, String content, String memberId) {
			connDB();
			String sql = "INSERT INTO t_board(bno, title, content, regDate, memberId) VALUES (my_seql.NEXTVAL, ?, ?, SYSDATE, ?)";
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, title);
				pstmt.setString(2, content);
				pstmt.setString(3, memberId);
				pstmt.executeUpdate();
				int value = pstmt.executeUpdate();
				System.out.println(value);
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				disconnect();
			}
			return -1;	//오류로 인한 추가 안됨
		}
		
		//목록 조회
		public ArrayList<Board> getListAll(){
			connDB();
			ArrayList<Board> list = new ArrayList<>();
			String sql = "SELECT * FROM t_board";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Board board = new Board();	//board 객체 생성
					int bno = rs.getInt("bno");
					String title = rs.getString("title");
					String content = rs.getString("content");
					Date regDate = rs.getDate("regDate");
					String memberId = rs.getString("memberId");
					
					board.setBno(bno);
					board.setTitle(title);
					board.setContent(content);
					board.setRegDate(regDate);
					board.setMemberId(memberId);
					list.add(board);			//arrayList에 board 객체 생성
				}
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				disconnect();
			}
			return list;
		}
}