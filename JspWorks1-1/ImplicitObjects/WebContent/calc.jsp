<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 만들기</title>
<style type="text/css">
	#container{
		width:70%;
		margin:0 auto;
		text-align:center;
	}
</style>
</head>
<body>
	<div id="container">
		<h2>계산기</h2>
		<hr>
		<form action="result.jsp" method="post">
			<input type="text" name="num1">
			<select name="op">
				<option selected>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select>
			<input type="text" name="num2">		
			<input type="submit" name="계산">		
			<input type="reset" name="다시 입력">		
		</form>
	</div>
</body>
</html>