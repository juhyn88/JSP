<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.jmp.board.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<style type="text/css">
#container{width: 600px; margin: 0 auto; text-align: center;}
table{width: 400px; margin: 0 auto; border-collapse: collapse; text-align: center;}
tr, td{border: 1px solid #222; padding: 10px;}
input[type="text"], input[type="password"]{width: 200px; height: 20px;}
</style>
</head>
<body>
	<%
		String sessionId = null;
		if(session.getAttribute("sessionId") != null){
			sessionId = (String)session.getAttribute("sessionId");
		}
	%>
	<jsp:include page="menu.jsp" />
	<div id="container">
		<h1>게시글 목록</h1>
	</div>
	<p>
			<table>
				<tr>
					<td>번호</td><td>글제목</td><td>작성자</td><td>작성일</td>
				</tr>
				<%
					BoardDAO dao =new BoardDAO();
					for(Board board : dao.getListAll()){
				%>
				<tr>
					<td><%=board.getBno() %></td>
					<td><%=board.getTitle() %></td>
					<td><%=board.getMemberId() %></td>
					<td><%=board.getRegDate() %></td>
				</tr>
				<% } %>
				<tr>
					<td colspan="4">
						<input type="button" onclick="location.href='board_write.jsp'" value="글쓰기">
					</td>
				</tr>
			</table>					
</body>
</html>