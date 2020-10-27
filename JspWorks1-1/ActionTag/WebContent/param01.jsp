<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<h2>param 액션 태그</h2>
	<jsp:forward page="param01_data.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value='<%=URLEncoder.encode("장한나") %>' name="name"/>
	</jsp:forward>
	<!-- String name = "admin" -->
</body>
</html>