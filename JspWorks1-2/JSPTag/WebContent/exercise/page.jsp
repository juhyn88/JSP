<%@ page language="java" contentType="te\\\\\xt/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 디렉티브 태그</title>
</head>
<body>
	<%
		Date date = new Date();
		double pi = Math.PI;
		double pow = Math.pow(5, 2);
		int abs = Math.abs(-10);
		long round = Math.round(2.54444);
		double floor = Math.floor(7.89);
		double rand = Math.random();
		int dice = (int)(Math.floor(Math.random()*6)+1);
	%>
	<p>현재 날짜 : <%= date %>
	<p>원주율 : <%= pi %>
	<p>5의 제곱 : <%= pow %>
	<p>-10의 절대값 : <%= abs %>
	<p>반올림 : <%=round %>
	<p>내림 : <%=floor %>
	<p>무작위 수 : <%=rand %>
	<p>주사위 눈 : <%=dice %>
</body>
</html>