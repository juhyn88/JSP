package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControllerServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//������ �� - ���ڿ�
		request.setAttribute("message", "Hello Java Server Page!!");
		
		//�� - �迭
		String[] animals = {"̳", "��", "��", "��"};
		request.setAttribute("animals", animals);
		
		//�� - ArrayList
		ArrayList<String> fruits = new ArrayList<>();
		fruits.add("��");
		fruits.add("���");
		fruits.add("�丶��");
		request.setAttribute("fruits", fruits);
		
		//�� - Map
		Map<String, Object> board = new HashMap<>();
		board.put("name", "�ƹ���");
		board.put("title", "�ڷγ��� �� ������");
		request.setAttribute("notice", board);
			
		//������ Ŭ����
		RequestDispatcher dispatch = request.getRequestDispatcher("view.jsp");
		dispatch.forward(request, response);
	}

	@Override
	public void destroy() {
		super.destroy();
	}

	@Override
	public void init() throws ServletException {
	}
	
		
}
 