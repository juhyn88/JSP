<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 예제</title>
</head>
<body>
	<h4>===세션을 삭제하기 전===</h4>
	<%
		String id = (String)session.getAttribute("userId");
		String pw = (String)session.getAttribute("userPw");
		
		out.println("설정된 세션 이름 userId : " + id + "<br>");
		out.println("설정된 세션 이름 userPw : " + pw + "<br>");
		
		if(request.isRequestedSessionIdValid()==true){
			out.println("세션이 유효합니다.");
		}else{
			out.println("세션이 유효하지 않습니다.");
		}
		
		session.invalidate();		//세션에 저장된 모든 속성 삭제
	%>
	<h4>===세션을 삭제한 후===</h4>
	<%
		if(request.isRequestedSessionIdValid()==true){
			out.println("세션이 유효합니다.");
		}else{
			out.println("세션이 유효하지 않습니다.");
		}
	%>
</body>
</html>