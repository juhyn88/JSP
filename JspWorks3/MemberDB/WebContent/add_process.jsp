<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 등록 폼</title>
<style>
	#container{width: 600px; margin: 0 auto; text-align: center;}
</style>
</head>
<jsp:useBean id="member" class="org.jmp.member.Member"/>
<jsp:setProperty property="*" name="member"/>

<jsp:useBean id="memDAO" class="org.jmp.member.MemberDAO" scope="application"/>
<jsp:setProperty property="*" name="memDAO"/>
<%
	memDAO.addMember(member);
	response.sendRedirect("mem_result.jsp?msg=1");
%>
<body>
	<jsp:include page="menu.jsp"/>
	<div id="container">
		<h2>멤버 등록</h2>
			<p>아이디 : <%=member.getMemberId() %>		
			<p>비밀번호 : <%=member.getPasswd() %>
			<p>이름 : <%=member.getName() %>
			<p>이름 : <%=member.getGender() %>			
			<hr>
			<a href="mem_list.jsp">멤버 목록 보기</a>
	</div>
</body>
</html>