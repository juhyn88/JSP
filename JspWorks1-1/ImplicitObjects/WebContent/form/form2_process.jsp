<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<head>
<style type="text/css">
	table,th,td{
		border: 1px solid #222;
		border-collapse: collapse;
		padding: 10px;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("utf-8");
		
			Enumeration<String> paramNames = request.getParameterNames();
			while(paramNames.hasMoreElements()){
				String name = paramNames.nextElement();
				out.println("<tr><td>" + name + "</td>");
				String value = request.getParameter(name);
				out.println("<td>" + value + "</td></tr>");
			}
		%>
	
	</table>
</body>