<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 추가</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
	%>
	
	<!-- DB연결 -->
	<sql:setDataSource var="dataSource"
		driver = "com.mysql.jdbc.Driver"
		url = "jdbc:mysql://localhost:3306/jspdb?useUnicode=true&characterEncoding=utf8"
		user = "root" password="12345"
	/>
	<!-- member 테이블에 데이터 추가하기 -->
	<sql:update dataSource="${dataSource}">
		INSERT INTO member(id, passwd, name) VALUES (?, ?, ?);
		<sql:param value="<%=id %>" /> 
		<sql:param value="<%=passwd %>" />
		<sql:param value="<%=name %>" />
	</sql:update>
	
	<!-- member 테이블 조회 -->
	<c:import var="url" url="select.jsp" />
	${url }
</body>
</html>