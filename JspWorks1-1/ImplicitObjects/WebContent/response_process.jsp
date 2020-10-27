<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		//로그인 여부
		//아이디와 비번이 같으면 성공페이지로 이동, 아니면 실패 페이지로 이동
		if(user_id.equals("admin") && user_pw.equals("0000")){
			response.sendRedirect("response_success.jsp");
		}else{
			response.sendRedirect("response_fail.jsp");
		}
		
	%>
</body>
</html>