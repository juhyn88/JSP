<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CORE 태그</title>
</head>
<body>
	<h3>구구단 출력</h3>
	<table>
		<%-- <% for(int  i=1; i<10; i++){ %>
				<tr>
				<% for(int j=1; j<10; j++){ %>
					<td><%=i + "x" + j + " = " + (i*j)  %></td>
				<%} %>	
				</tr>
			<% } %>--%>
			<c:forEach var="i" begin="1" end="9">
				<tr>
					<c:forEach var="j" begin="1" end="9">
						<td width="100">${i} x ${j } = ${i*j }</td>
					</c:forEach>	
				</tr>			
			</c:forEach>
		</table>
</body>
</html>