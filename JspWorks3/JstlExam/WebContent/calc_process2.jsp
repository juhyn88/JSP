<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀수 / 짝수 판별 프로그램</title>
</head>
<body>
	<c:set var="number" value="${param.number }"></c:set>
	<c:if test="${number % 2 != 0}">
		${number}는 홀수입니다.
	</c:if>
	<c:if test="${number % 2 == 0}">
		${number}는 짝수입니다.
	</c:if>
</body>
</html>