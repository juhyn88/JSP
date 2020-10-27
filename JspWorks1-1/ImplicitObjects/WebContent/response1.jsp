<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response 객체</title>
<link rel="stylesheet" href="./resources/css/login.css">
</head>
<body>
	<div id="container">
		<h2>로그인</h2>
		<form action="response_process.jsp" method="post">
			<ul>
				<li>
					<label for="id">아이디</label>
					<input type="text" name="id">
				</li>
				<li>
					<label for="passwd">비밀번호</label>
					<input type="password" name="passwd">
				</li>
				<li>
					<input type="submit" name="전송">
				</li>
			</ul>
		</form>
		<p>이 페이지는 10초마다 새로고침 됩니다.</p>
		<%
			response.setIntHeader("Refresh", 10);
		%>					
		<%=new Date()%>
	</div>
</body>
</html>