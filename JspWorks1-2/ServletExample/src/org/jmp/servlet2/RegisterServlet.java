package org.jmp.servlet2;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
	}


	public void destroy() {
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("userid");
		String pw = request.getParameter("passwd");
		String[] subject = request.getParameterValues("subject");
		
		System.out.println("���̵� : " + id);
		System.out.println("��й�ȣ : " + pw);
		for(String subj : subject) 
			System.out.println("���ð��� : " + subj);
		
	}

}
