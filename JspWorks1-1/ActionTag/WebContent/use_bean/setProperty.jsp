<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="p" class="dao.Person"/>
	<jsp:setProperty property="id" name="p" value="20202001"/>
	<jsp:setProperty property="name" name="p" value="류현진"/>
	
	<p>아이디 : <jsp:getProperty property="id" name="p"/>
	<p>이 름 : <jsp:getProperty property="name" name="p"/>
</body>
</html>