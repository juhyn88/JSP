<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<%-- <jsp:useBean id="person" class="dao.Person" scope="request"></jsp:useBean> --%>
	<!-- Person person = new Person -->
	<%
		Person person = new Person();
	%>
	<p> 아이디 : <%=person.getId() %>
	<p> 이 름 : <%=person.getName() %>
</body>
</html>