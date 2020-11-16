<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="org.jmp.member.Member" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 목록</title>
<style type="text/css">
	#container{width: 600px; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 600px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	.font{font-size: 1.1em;}
</style>
</head>
<jsp:useBean id="memDAO" class="org.jmp.member.MemberDAO" scope="application"/>
<jsp:setProperty property="*" name="memDAO"/>
<body>
	<jsp:include page="menu.jsp"/>
	<%
		String sessionId = null;
		if(session.getAttribute("sessionId") != null){
			sessionId = (String)session.getAttribute("sessionId");
		}else{
			response.sendRedirect("main.jsp");
		}
	%>
	<div id="container">
		<h2>회원 목록</h2>
		<hr>
		<table>
			<tr>
				<td>아이디</td><td>비밀번호</td><td>이름</td><td>성별</td><td>가입일</td><td>회원보기</td>
			</tr>
			<% for(Member member : memDAO.getListAll()){ %>
			<tr>
				<td><%=member.getMemberId() %></td>
				<td><%=member.getPasswd() %></td>
				<td><%=member.getName() %></td>
				<td><%=member.getGender() %></td>
				<td><%=member.getJoinDate() %></td>
				<td><button type="button" onclick="location.href='mem_view.jsp?memberId=<%=member.getMemberId() %>'">
				           보기</button></td>
			</tr>
			<% } %>
		</table>	
	</div>
</body>
</html>