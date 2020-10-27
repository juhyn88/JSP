<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>JSP Tag</title>
</head>
<body>
	<p>Today's date : <%= new Date() %>
	<p>Today's date : <%= new Date().toLocaleString() %>
	<!-- Date date = new Date() -->	
</body>
</html>