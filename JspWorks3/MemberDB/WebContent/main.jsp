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
</style>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div id="container">
		<div class="title">
			<h1>Welcome to World Job Friends</h1>
		</div>
		<p><img src="resources/images/friends.JPG" width="300" height="350" alt="friends 사진">
		<p>
		<%
			Date day = new Date();
			String am_pm;
			int hour = day.getHours();
			int minute = day.getMinutes();
			int second = day.getSeconds();
			if(hour / 12 == 0){
				am_pm = "AM";
			} else {
				am_pm = "PM";
				hour = hour - 12;
			}
			String ct = hour + ":" + minute + ":" + second + " " + am_pm;
			out.println("현재 접속 시간 : " + ct );
			response.setIntHeader("Refresh", 5);
		%>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>