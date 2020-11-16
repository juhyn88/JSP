package org.jmp.jpvoca;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class VocaListDAO {

	
	private static String driver = "oracle.jdbc.driver.OracleDriver";
	private static String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	private static String user = "hr";
	private static String pwd = "12345";
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	ResultSet rs = null;
	
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

	public void addVoca(VocaList vocalist) {
		connDB(); //SQLÁ¢¼Ó
		String sql = "INSERT INTO japanese_voca VALUES(?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vocalist.getKanji());
			pstmt.setString(2, vocalist.getGana());
			pstmt.setString(3, vocalist.getImi());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<VocaList> getListAll(){
		ArrayList<VocaList> list = new ArrayList<>();
		connDB();
		String sql = "SELECT * FROM japanese_voca";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String kanji = rs.getString("kanji");
				String gana = rs.getString("gana");
				String imi = rs.getString("imi");
				
				VocaList vocalist = new VocaList();
				vocalist.setKanji(kanji);
				vocalist.setGana(gana);
				vocalist.setImi(imi);
				
				list.add(vocalist);
			}
			
			rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		
		
	}

}//class end
