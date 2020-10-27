<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력하기</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<%
		int dan = Integer.parseInt(request.getParameter("dan")); 
		/*Integer 클래스의 parseInt() 사용*/
		
		for(int i=1; i<10; i++){
			out.println(dan + "x" + i + "=" + dan*i + "<br>");
		}
	%>
</body>
</html>