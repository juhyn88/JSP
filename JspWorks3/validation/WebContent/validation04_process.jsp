<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<p>아이디 : <%=request.getParameter("id") %>
	<p>비밀번호 : <%=request.getParameter("pwd") %>
	<p>이 름 : <%=request.getParameter("name") %>
	<p>연락처 : <%=request.getParameter("phone1") %>-<%=request.getParameter("phone2") %>
						-<%=request.getParameter("phone3") %>
</body>
</html>