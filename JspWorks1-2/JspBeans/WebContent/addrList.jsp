<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.jmp.bean.AddrBook" %>
<%
	request.setCharacterEncoding("utf-8"); //한글 인코딩 세팅
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 등록</title>
<style>
	#container{
		width:600px;
		margin: 0 auto;
		text-align: center;
	}
	#table, tr, td{
		width: 400px;
		margin: 0 auto;
		border: 1px solid #ccc;
		border-collapse: collapse;
	}
	#td{padding: 5px;}
	input[type="text"]{width: 200px; padding: 5px;}
	input[type="submit"],input[type="reset"]{font-size: 1.1em;}
</style>
</head>
<jsp:useBean id="abDAO" class="org.jmp.bean.AddrBookDAO" scope="application" />
<jsp:setProperty property="*" name="abDAO"/>
<body>
	<div id="container">
		<h2>주소 목록</h2>
		<hr>
		<table>
			<tr>
				<td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td>
			</tr>
			<%
				for(AddrBook addrbook : abDAO.getListAll()){
			%>
			<tr>
				<td><%=addrbook.getUsername() %></td>
				<td><%=addrbook.getTel() %></td>
				<td><%=addrbook.getEmail() %></td>
				<td><%=addrbook.getSex() %></td>
			</tr>
			<%
				}
			%>
		</table>
		
	</div>
</body>
</html>