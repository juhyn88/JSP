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
		int num = 0;		//변수 초기화
		String number = request.getParameter("number");
		if(number != null)
			num = Integer.parseInt(request.getParameter("number"));
		
		String result = " ";
		if(num % 2 != 0)
			result="홀수";
		else
			result="짝수";
		
		request.setAttribute("result", result); 		//모델
		//상태 정보 저장 객체 4가지 - page, request, session, cookie
		
		//저장된 데이터를 전달해 줘야함(포워딩)
		RequestDispatcher dispatch = request.getRequestDispatcher("result.jsp");
		dispatch.forward(request, response);
	}

}
