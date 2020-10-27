<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>JSP Tag</title>
</head>
<%-- 선언문 태그 --%>
<%! int count=0; %>
<body>
	Page Count is
	<!-- 스크립틀릿 태그 -->
	<%
		out.print(++count);
	%>
	
	<!-- 표현문 태그 -->
	<%= "Page Count is" + ++count %>
</body>
</html>