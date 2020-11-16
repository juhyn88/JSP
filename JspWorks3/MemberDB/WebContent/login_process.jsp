<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="member" class="org.jmp.member.Member"/>
<jsp:setProperty property="memberId" name="member"/>
<jsp:setProperty property="passwd" name="member"/>

<jsp:useBean id="memDAO" class="org.jmp.member.MemberDAO" scope="application"/>
<jsp:setProperty property="*" name="memDAO"/>
<%
	String id = member.getMemberId();
	String pwd = member.getPasswd();
	int result = memDAO.login(id, pwd);
	
	if(result==1){ //회원번호 비밀번호 모두 일치경우
		session.setAttribute("sessionId", id); //세션 부여(설정)
		response.sendRedirect("mem_result.jsp?msg=2");
	} else if(result==0){ //회원번호 일치 비밀번호 불일치
		out.println("<script>alert('비밀번호가 일치하지 않습니다.'); history.go(-1);</script>");
	} else if(result==-1){
		out.println("<script>alert('회원번호가 일치하지 않습니다.'); history.go(-1);</script>");
	} else if(result==-2){
		out.println("<script>alert('데이터베이스 오류입니다.'); history.go(-1);</script>");
	}
%>
