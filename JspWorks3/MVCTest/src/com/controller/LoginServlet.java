package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.LoginBean;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		LoginBean bean = new LoginBean();
		bean.setId(id);
		bean.setPasswd(passwd);
		
		request.setAttribute("bean", bean);
		
		boolean status = bean.validate();
		if(status) {
			RequestDispatcher dispatch = request.getRequestDispatcher("mvc_success");
			dispatch.forward(request, response);
		}else {
			RequestDispatcher dispatch = request.getRequestDispatcher("mvc_error");
			dispatch.forward(request, response);
		}
	}
}
