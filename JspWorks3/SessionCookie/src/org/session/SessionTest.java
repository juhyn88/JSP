package org.session;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionTest
 */
@WebServlet("/sess1")
public class SessionTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//request��ü�� getSession()�� ȣ���Ͽ� ������ ������ ���� ����, ������ ���� ������
		HttpSession session = request.getSession();
		out.println("���� ���̵� : " + session.getId() + "<br>");
		out.println("���� ���� ���� �ð� : " + new Date(session.getCreationTime()) + "<br>");
		out.println("���� ���� ���� �ð� : " + new Date(session.getLastAccessedTime()) + "<br>");
		out.println("���� ��ȿ �ð� : " + session.getMaxInactiveInterval() + "<br>");
		if(session.isNew()) {
			out.println("�� ������ ����������ϴ�.");
		}
		
	}

}
