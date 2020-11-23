<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 가입</h2>
	<hr>
	<form action="update_process.jsp" method="post">
		<p>아이디 : <input type="text" name = "id">
		<p>비밀번호 : <input type="password" name = "passwd">
		<p>이 름 : <input type="text" name = "name">
		<p><input type="submit" value = "가입하기">
	</form>
</body>
</html>