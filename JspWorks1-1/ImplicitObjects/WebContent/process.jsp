<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Object</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");	//한글 인코딩
		String name = request.getParameter("name");
	%>
	<p> 이 름 : <%=name %></p>
</body>
</html>