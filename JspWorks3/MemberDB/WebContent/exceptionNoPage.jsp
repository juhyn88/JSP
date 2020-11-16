<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류페이지 처리</title>
<style type="text/css">
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height:140px; font-size: 30px; background: #eee; line-height: 120px; color:#333;}
	.msg{height: 500x; background: pink; line-height: 80px; color: brown; text-align: center;}
	.msg a{text-decoration: none; color: black; }
	.msg a:hover{text-decoration: underline;}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div id="container">
		<div class="title">
			<h1>요청하신 페이지를 찾을 수 없습니다.</h1>
		</div>
	</div>
	<div class="msg">
		<h1><a href="main.jsp">Home으로 이동 &raquo;</a></h1>		
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>