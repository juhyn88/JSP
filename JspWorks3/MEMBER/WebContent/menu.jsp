<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네비게이션 바</title>
<style type="text/css">
	nav{margin-top: 30px; text-align: right; margin-right: 30px;}
	nav ul{list-style-type: none;}
	nav ul li{display: inline; padding: 10px 15px; margin-right: 20px; border-top: 3px solid #222;}
	nav ul li a{text-decoration: none; color:black;}
	nav ul li a :hover{background: rgb(255, 178, 245);}
</style>
</head>
<body>
	<nav>
		<ul>
			<li><a href="main.jsp">Home</a>
			<li><a href="login_form.jsp">로그인</a>
			<li><a href="mem_form.jsp">회원가입</a>
			<li><a href="#">게시판</a>
		</ul>
	</nav>
</body>
</html>