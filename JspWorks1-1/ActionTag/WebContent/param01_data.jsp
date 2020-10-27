<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
	%>
	<p>아이디 :  <%=request.getParameter("id") %>
	<p>이 름 : <%=URLDecoder.decode(name) %>
	<!-- decode()가 정적 메서드이므로 클래스 이름으로 접근 -->
</body>
</html>