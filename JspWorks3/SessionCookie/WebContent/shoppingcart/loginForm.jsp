<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<style type="text/css">
#container{width: 600px; margin: 0 auto; text-align: center;}
</style>
</head>
<body>
	<div id="container">
		<h2>로그인</h2>
		<hr><!-- 사용자 이름으로 로그인 -->
		<form action="selProduct.jsp" method="post">
			<input type="text" name="username">
			<input type="submit" value="로그인">
		</form>
	</div>
</body>
</html>