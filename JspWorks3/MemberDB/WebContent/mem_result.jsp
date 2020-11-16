<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page</title>
<style type="text/css">
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height:140px; font-size: 30px; background: #eee; line-height: 120px; color:#333;}
	.msg{height: 500x; background: pink; line-height: 80px; color: brown; text-align: center;}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div id="container">
		<div class="title">
			<h1>회원정보</h1>
		</div>
	</div>
	<div class="msg">
		<%
			String msg = request.getParameter("msg");
		if(msg != null){
			if(msg.equals("0")){
				out.println("<h1>회원 정보가 수정되었습니다.</h1>");
			}else if(msg.equals("1")){
				out.println("<h1>회원 가입을 축하합니다.</h1>");
			}else if(msg.equals("2")){
				String loginId = (String)session.getAttribute("sessionId");
				out.println("<h1>" + loginId + "님 환영합니다. 로그인 해 주세요</h1>");
			}
		}else{
			out.println("<h1>회원 정보가 삭제되었습니다.</h1>");
		}
		%>
		
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>