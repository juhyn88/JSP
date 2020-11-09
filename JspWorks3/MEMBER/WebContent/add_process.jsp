<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록</title>
<style type="text/css">
	#container{width: 600px; margin: 0 auto; text-align: center;}
</style>
</head>
<jsp:useBean id="member" class="org.jmp.member.Member" />
<jsp:setProperty property="*" name="member"/>


<jsp:useBean id="memDAO" class="org.jmp.member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>
<%
	memDAO.addMember(member);
	
%>
<body>
	<div id="container">
		<h2>사원 등록 내용</h2>
			<p>아이디 : <%=member.getMemberId() %>
			<p>비밀번호 : <%=member.getPasswd() %>
			<p>이 름 : <%=member.getName() %>
			<p>성 별 : <%=member.getGender() %>
			<hr>
			<p><a href="mem_list.jsp">사원 목록 보기</a>
	</div>
</body>
</html>