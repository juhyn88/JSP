<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다국어 처리</title>
</head>
<body>
	<p>----기본 로케일 ----
		<fmt:setLocale value="ko"/>
		<fmt:setBundle basename="com.bundle.myBundle" var="resourceBundle"/>
	<p>제목 : <fmt:message key="title" bundle="${resourceBundle}" />
	<p>이름 : <fmt:message key="username" bundle="${resourceBundle}" />
	
	<p>---- 영문 로케일----
		<fmt:setLocale value="en"/>
		<fmt:setBundle basename="com.bundle.myBundle" var="resourceBundle"/>
	<p>제목 : <fmt:message key="title" bundle="${resourceBundle}" />
	<p>이름 : <fmt:message key="username" bundle="${resourceBundle}" />
</body>
</html>