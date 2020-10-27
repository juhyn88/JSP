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
		//세션 정보(값) - 세션 속성 이름으로 가져오기
		String id = (String)session.getAttribute("userId");
		String pw = (String)session.getAttribute("userPw");
		
		out.println("설정된 세션의 속성 값[1] : " + id + "<br>");
		out.println("설정된 세션의 속성 값[1] : " + pw + "<br>");
	%>
</body>
</html>