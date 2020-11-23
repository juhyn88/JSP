<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀수 / 짝수 판별 프로그램</title>
</head>
<body>
	<h2>홀수 / 짝수 판별 프로그램</h2>
	<%
		int num = 13;
		String result = " ";	
	
		if(num%2 != 0)
			//out.println("홀수입니다.");
			result="홀수입니다.";
		else
			//out.println("짝수입니다.");
			result="짝수입니다.";
	%>
	<%=result%>
</body>
</html>