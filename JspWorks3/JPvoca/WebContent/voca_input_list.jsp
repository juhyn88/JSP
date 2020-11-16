<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.jmp.jpvoca.VocaList" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단어 목록 생성</title>
<style type="text/css">
#container{width: 600px; margin: 0 auto; text-align: center;
			border: 1px solid #555;}
table, tr, td{margin: 0 auto;}
</style>
</head>
<jsp:useBean id="vocadao" class="org.jmp.jpvoca.VocaListDAO"></jsp:useBean>
<jsp:setProperty property="*" name="vocadao"/>

<body>
	<div id="container">
				<h4>생성된 단어 목록</h4>
				<hr>
				<table>
					<% for(VocaList vocalist : vocadao.getListAll()){ %>
					<tr>
						<td><p><%=vocalist.getKanji() %></td>
						<td><p><%=vocalist.getGana() %></td>
						<td><p><%=vocalist.getImi() %></td>
					</tr>
					<%
						}
					%>
				</table>
	</div>
</body>
</html>