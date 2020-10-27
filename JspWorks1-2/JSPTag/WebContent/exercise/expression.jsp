<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간 출력</title>
</head>
<body>
	<%
		//getInstance()가 정적메서드이므로 클래스이름으로 직접 접근
		Calendar now = Calendar.getInstance();
		out.println("Current Time:" + now.getTime());
	%>
	<%-- <p>Current Time: <%=now.getTime() %> --%>
</body>
</html>