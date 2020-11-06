<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dto.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 처리</title>
</head>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="m1" class="dto.Member" />
<jsp:setProperty property="*" name="m1"/>
<jsp:useBean id="memberList" class="java.util.ArrayList" />
<%
	memberList.add(m1);				//회원 가입시 추가

	Member m2 = new Member("son", "1234", "손흥민");
	memberList.add(m2);				//회원 생성으로 추가
	
	Member m3 = new Member("park", "3355", "박세리");
	memberList.add(m3);
%>
<c:set var="list" value="${memberList }" />
<body>
	<div id="container">
		<h2>회원 정보</h2>
		<hr>
		<table>
			<tr>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이 름</td>
			</tr>
			<tr>
				<td>${list[0].id}</td>
				<td>${list[0].pwd}</td>
				<td>${list[0].name}</td>
			</tr>
			<tr>
				<td>${list[1].id}</td>
				<td>${list[1].pwd}</td>
				<td>${list[1].name}</td>
			</tr>
		</table>
	</div>
</body>
</html>