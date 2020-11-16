<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
</head>
<jsp:useBean id="member" class="org.jmp.member.Member"/>
<jsp:setProperty property="*" name="member"/>

<jsp:useBean id="memDAO" class="org.jmp.member.MemberDAO" scope="application"/>
<jsp:setProperty property="*" name="memDAO"/>
<body>
<%
	String memId = request.getParameter("memberId");
	if(memDAO.delete(memId)){
		response.sendRedirect("mem_result.jsp?");
	}
%>
</body>
</html>