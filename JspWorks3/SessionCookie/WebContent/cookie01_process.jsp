<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 예제</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		
		if(id.equals("admin") && pw.equals("0000")){
			Cookie cookie_id = new Cookie("userId", id);		//(쿠키이름, 쿠키값)
			Cookie cookie_pw = new Cookie("userPw", pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.println("쿠키 생성이 성공했습니다.");
		}else{
			out.println("쿠키 생성이 실패했습니다.");
		}
	%>	

</body>
</html>