<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
</head>
<body>
	<div id="container">
	<hr>
	<c:if test="${empty param.id }">
		<p>아이디를 입력하세요
		<p><a href="loginform.jsp">로그인 하러가기</a>
	</c:if>
	<c:if test="${not empty param.id }">
		<h2>환영합니다.${param.id}님!!!</h2>
	</c:if>
	</div>
</body>
</html>