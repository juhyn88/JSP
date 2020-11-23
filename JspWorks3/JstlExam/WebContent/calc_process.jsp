<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀수 / 짝수 판별 프로그램</title>
</head>
<body>
	<%
		int num = 0;	//String number...바꿔주기 위해서 선언
		/* String number = request.getParameter("number");
		if(number != null){
			num = Integer.parseInt(request.getParameter("number"));
		} */
		if(request.getParameter("number") != null){
			num = Integer.parseInt(request.getParameter("number"));
		}
		
		String result = " ";
		if(num % 2 != 0)
			result="홀수";
		else
			result="짝수";
	%>
	<p>결과는 <%=result %>입니다.
</body>
</html>