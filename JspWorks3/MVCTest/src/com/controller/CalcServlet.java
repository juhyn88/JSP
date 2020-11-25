package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = 0;		//���� �ʱ�ȭ
		String number = request.getParameter("number");
		if(number != null)
			num = Integer.parseInt(request.getParameter("number"));
		
		String result = " ";
		if(num % 2 != 0)
			result="Ȧ��";
		else
			result="¦��";
		
		request.setAttribute("result", result); 		//��
		//���� ���� ���� ��ü 4���� - page, request, session, cookie
		
		//����� �����͸� ������ �����(������)
		RequestDispatcher dispatch = request.getRequestDispatcher("result.jsp");
		dispatch.forward(request, response);
	}

}
