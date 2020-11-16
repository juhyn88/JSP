<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나누기 처리</title>
</head>
<body>
	<%
		try{
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			int a = Integer.parseInt(num1);
			int b = Integer.parseInt(num2);
			int c = a / b;
			out.print(num1 + " / " + num2 + " = " + c);
		}catch(NumberFormatException e){
			RequestDispatcher dispatcher = request.getRequestDispatcher("tryCatch_error.jsp");
			//RequestDispatcher 클래스는 포워딩 기능(다른 서블릿이나 JSP로 정보를 전달)을 수행
			dispatcher.forward(request, response);
		}
	%>
</body>
</html>