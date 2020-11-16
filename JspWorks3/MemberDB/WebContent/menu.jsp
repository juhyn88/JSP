<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네비게이션 바</title>
<style type="text/css">
	nav{margin-top: 30px; margin-right: 30px; text-align:right;}
	nav ul{list-style-type: none;}
	nav ul li{display: inline; margin-right: 20px; padding: 10px 15px; border-top: 3px solid #222;}
	nav ul li a{text-decoration: none; color: black;}
	nav ul li a:hover{background: rgb(196, 196, 196);}
</style>
</head>
<body>
	<%
		String sessionId = null;
		if(session.getAttribute("sessionId") != null){
			sessionId = (String)session.getAttribute("sessionId");
		}else{
			response.sendRedirect("main.jsp");
		}
	%>
	<nav>
		<% if(sessionId==null) { %>
		<ul>
			<li><a href="main.jsp">Home</a>
			<li><a href="login_form.jsp">로그인</a>
			<li><a href="mem_form.jsp">회원가입</a>
			<li><a href="board_list.jsp">게시판</a>
		</ul>
		<%} else { %>
		<ul>
			<li><a href="main.jsp">Home</a>
			<li><a href="logout.jsp">[<%=sessionId %>님]로그아웃</a>
			<li><a href="mem_list.jsp">회원 목록</a>
			<li><a href="board_list.jsp">게시판</a>
		</ul>
		<% } %>
	</nav>

</body>
</html>
