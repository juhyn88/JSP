package org.jmp.servlet2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login3")
public class Login3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void init(ServletConfig config) throws ServletException {
	}

	
	public void destroy() {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		//데이터 타입을 html로 응답 처리
		PrintWriter out = response.getWriter();
		//출력을 위해 PrintWriter 클래스 사용
		
		
		String id = request.getParameter("userid");
		String pw = request.getParameter("passwd");
		String phone = request.getParameter("phone");
		
		String data = "<html><body>";
			   data += "아이디 : " + id;
			   data += "<br>";
			   data += "비밀번호 : " + pw;
			   data += "<br>";
			   data += "전화번호 : " + phone;
			   data += "</body></html>";
			   
		out.print(data);
	}

}
