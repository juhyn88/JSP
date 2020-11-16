package org.jmp.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		MemberDAO memDAO = new MemberDAO();
		ArrayList<Member> list = memDAO.getListAll();
		
		out.println("<html><body>");
		out.println("<table border=1><tr>");
		out.println("<td>회원번호</td><td>비밀번호</td><td>이름</td><td>가입일</td>");
		
		for(Member member : list) {
			String id = member.getMemberId();
			String pwd = member.getPasswd();
			String name = member.getName();
			Date joinDate = member.getJoinDate();
			
			out.println("<tr><td>" + id + "</td><td>" + pwd + "</td><td>" + name + "</td><td>" + joinDate + "</td></tr>");
			
		}
		out.println("</table></body></html>");
		
	}

}
