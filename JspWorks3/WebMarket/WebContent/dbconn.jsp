<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		Connection conn = null;	
		String driver = "com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/jspdb?useUnicode=true&characterEncoding=utf8";
		String user = "root";
		String pwd = "12345";
		
		Class.forName(driver);
		conn = DriverManager.getConnection(url,user,pwd);

	%>
</body>
</html>