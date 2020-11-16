<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="org.jmp.board.BoardDAO"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="board" class="org.jmp.board.Board" />
<jsp:setProperty property="title" name="board"/>
<jsp:setProperty property="content" name="board"/>

<%
	String sessionId = null;
	if(session.getAttribute("sessionId") != null){
		sessionId = (String)session.getAttribute("sessionId");
	}
	if(sessionId == null){
		out.println("<script> alert('로그인을 하세요'); location.href=login_form.jsp';</script>");
	}else{
		if(board.getTitle()==null || board.getContent()==null){
			out.println("<script> alert('입력 안된 항목이 있습니다.'); history.back();</script>");
		}else{
			BoardDAO dao = new BoardDAO();
			dao.writing(board.getTitle(), board.getContent(), sessionId);
			response.sendRedirect("board_list.jsp");
		}
	}
%>