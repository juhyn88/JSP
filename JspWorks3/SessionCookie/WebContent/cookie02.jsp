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
		//클라이언트에 저장된 모든 쿠키 객체를 가져오려면 request 객체의 getCookies()를 이용
		Cookie[] cookies = request.getCookies();
		out.println("현재 설정된 쿠키의 개수 - >" + cookies.length + "<br>");
		out.println("====================================<br>");
		for(int i =0; i<cookies.length; i++){
			out.println("설정된 쿠키의 속성 이름["+i+"]" + cookies[i].getName() + "<br>");
			out.println("설정된 쿠키의 속성값["+i+"]" + cookies[i].getValue() + "<br>");
			out.println("====================================<br>");
		}
		
	%>
</body>
</html>