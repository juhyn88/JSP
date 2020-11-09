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
	int id = member.getMemberId();
	String pw = member.getPasswd();
	
	if(memDAO.login(id, pw)){
		response.sendRedirect("mem_list.jsp");
	}else{
		out.println("<script>alert('아이디나 이름이 일치하지 않습니다.'); history.go(-1);</script>");
	}

%>