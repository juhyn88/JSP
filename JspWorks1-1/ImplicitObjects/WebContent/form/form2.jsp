<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
</head>
<body>
	<h2>회원 가입</h2>
	<form action="form2_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"> <input type="button" value="아이디 중복검사">
		<p>비밀번호 : <input type="password" name="passwd">
		<p>이 름 : <input type="text" name="name">
		<p>연락처 : <input type="text" name="phone1" maxlength="4" size="4">
				- <input type="text" name="phone2" maxlength="4" size="4">
				- <input type="text" name="phone3" maxlength="4" size="4">
		<p>성 별 : <input type="radio" name="sex" value="남성" checked>남성
				- <input type="radio" name="sex" value="여성" >여성
		<p>취 미 : 독서<input type="checkbox" name="hobby" value="독서" checked>
				  운동<input type="checkbox" name="hobby" value="운동">
				  영화<input type="checkbox" name="hobby" value="영화">
		<p><input type="submit" value="가입하기">
		   <input type="submit" value="다시 쓰기">
		<p><textarea name="comment" rows="3" cols="30" placeholder="가입인사를 입력해 주세요."></textarea>
	</form>
</body>
</html>