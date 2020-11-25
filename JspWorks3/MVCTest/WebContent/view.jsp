<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC</title>
</head>
<%
	pageContext.setAttribute("message", "ありがとございます");
%>
<body>
	<%-- <% request.getAttribute("message") %> --%>
	<p>${message}
	<p>${animals[0]},
		   ${animals[2]}
	<p><c:forEach var="fruit" items="${fruits}">
			${fruit}
	</c:forEach>
	
	<p>${notice.name}
	<p>${notice.title}
	<%-- <p>${sentence} --%>
	<p>${param.n}
	<p>${header.accept}
</body>
</html>