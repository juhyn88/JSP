<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 예제</title>
</head>
<body>
	<%
		//쿠키 삭제
		Cookie[] cookies = request.getCookies();
		
		for(int i=0; i<cookies.length; i++){
			cookies[i].setMaxAge(0);				//유효 기간을 0으로 만든다 -> 삭제
			response.addCookie(cookies[i]);
		}
		response.sendRedirect("cookie02.jsp");
	%>
</body>
</html>