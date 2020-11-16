package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/dbcp")
public class DbcpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
       
    }

	public void destroy() {
		// TODO Auto-generated method stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = null;
		DataSource ds = null;
		PreparedStatement pstmt = null;
		
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:/comp/env");
			ds = (DataSource) envCtx.lookup("jdbc/oracle");
			
			conn = ds.getConnection();
			System.out.println("DB 연결 성공");
			
			
	}catch(NamingException e) {
		e.printStackTrace();
	}catch(SQLException e) {
		e.printStackTrace();
	}
}
}
