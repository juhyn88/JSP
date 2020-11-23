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
		request.setCharacterEncoding("utf-8");
		
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
	<!-- member 테이블 정보 수정 -->
	<sql:update dataSource="${dataSource}" var="resultSet">
		UPDATE member SET name = ? where id = ? and passwd = ?
		<sql:param value="<%=name%>" /> 
		<sql:param value="<%=id%>" />
		<sql:param value="<%=passwd%>" />
	</sql:update>
	
	<!-- member 테이블 조회 -->
	<c:import var="url" url="select.jsp" />
	${url }
</body>
</html>