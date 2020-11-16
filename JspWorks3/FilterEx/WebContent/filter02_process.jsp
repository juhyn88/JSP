<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filter 예제</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("passwd");
	%>
	<p> 입력된 id 값 : <%=id %>
	<p> 입력된 pwd 값 : <%=pwd %>
</body>
</html>