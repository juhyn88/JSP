<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
<style>
	table,td{
		border: 1px solid #ccc;
		padding: 10px;
		border-collapse: collapse;
	}
	p{text-align:center;}
</style>
</head>
<body>
	<h2>구구단</h2>
	<table>
		<tr>
		<%
			/*구구단 전체 표형태로 출력하기*/
			for(int i=2; i<=9; i++){
		%>
			<td>
			<p><%=i + "단" %></p>
			<%
				for(int j=1; j<=9; j++){
					out.println(i + "x" + j + "=" + i*j + "<br>"); 
				}
			%>
			</td>
		<%
			}
		%>
		</tr>
	</table>
</body>
</html>