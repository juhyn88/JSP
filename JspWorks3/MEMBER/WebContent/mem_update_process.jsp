<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="member" class="org.jmp.member.Member" />
<jsp:setProperty property="memberId" name="member"/>
<jsp:setProperty property="passwd" name="member"/>
<jsp:setProperty property="name" name="member"/>
	
<jsp:useBean id="memDAO" class="org.jmp.member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>

<%
	if(memDAO.update(member)){		
		response.sendRedirect("mem_list.jsp");
	}

%>