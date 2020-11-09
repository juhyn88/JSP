<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="member" class="org.jmp.member.Member" />
<jsp:setProperty property="*" name="member"/>
	
<jsp:useBean id="memDAO" class="org.jmp.member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>

<%
	int memId = Integer.parseInt(request.getParameter("memberId"));
	if(memDAO.delete(memId)){
		response.sendRedirect("mem_list.jsp"); 
	}

%>