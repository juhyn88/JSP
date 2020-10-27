<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="dao.Person" scope="request"></jsp:useBean>
	<p> 아이디 : <%=person.getId() %>
	<p> 이 름 : <%=person.getName() %>
	<%
		person.setId(20101002);
		person.setName("안영이");
	%>
	<jsp:include page="usePerson.jsp" />
</body>
</html>