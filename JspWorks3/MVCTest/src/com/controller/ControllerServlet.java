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
		//데이터 모델 - 문자열
		request.setAttribute("message", "Hello Java Server Page!!");
		
		//모델 - 배열
		String[] animals = {"犬", "猫", "豚", "牛"};
		request.setAttribute("animals", animals);
		
		//모델 - ArrayList
		ArrayList<String> fruits = new ArrayList<>();
		fruits.add("귤");
		fruits.add("사과");
		fruits.add("토마토");
		request.setAttribute("fruits", fruits);
		
		//모델 - Map
		Map<String, Object> board = new HashMap<>();
		board.put("name", "아무개");
		board.put("title", "코로나를 잘 피하자");
		request.setAttribute("notice", board);
			
		//포워딩 클래스
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
 