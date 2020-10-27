<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<jsp:useBean id="login" class="com.jmp.bean.LoginBean" />
<jsp:setProperty property="*" name="login"/>
<body>
	<h2>로그인</h2>
	<hr>
	<%
		//로그인 성공 여부 메시지 출력
		if(!login.checkUser()){	//login.checkUser()==false
			out.println("로그인 실패");
		}else{
			out.println("로그인 성공");
		}
	%>
	<hr>
	<p>사용자 아이디 : <jsp:getProperty property="userid" name="login"/>
	<p>사용자 패스워드 : <jsp:getProperty property="passwd" name="login"/>
</body>
</html>