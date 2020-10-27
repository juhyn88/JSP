<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
	<%
		/*구구단 3단 출력하기*/
		for(int i =1; i <= 9; i++){
			out.println("3 x" + i + "=" + 3*i + "<br>");
		}
		
		/*구구단 전체 출력하기*/
		int i,j;
		for(i=2; i<=9; i++){
			for(j=1; j<=9; j++){
				out.println(i + "x" + j + "=" + i*j + "<br>"); 
			}
		}
	%>
</body>
</html>