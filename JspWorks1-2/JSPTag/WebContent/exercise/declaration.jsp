<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전역 메서드 선언</title>
</head>
<body>
	<%!
		String getString(){
			String str = "Hello,Java Server Pages";
			return str;
		}
	%>
	<!-- 스크립틀릿 -->
	<%
		out.println(getString());
	%>
	<br>
	<!-- 표현문 태그 -->
	<%= getString() %>
</body>
</html>