<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<style>
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 140px; font-size: 30px; background: #eee; line-height: 120px; color: #333;}
</style>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>Welcome to World Friends</h1>
		</div>
		<div>
			<p><img src="resources/images/Strange Things.jpg"
							 width: "400" height="350" alt="friends 사진">
			<p>
			<%
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if(hour/12 == 0){
					am_pm = "AM";
				}else{
					am_pm = "PM";
					hour = hour-12;
				}
				String ct = hour + " : " + minute + " : " + second + " " + am_pm;
				out.println("현재 접속 시간 : " + ct);
				response.setIntHeader("Refresh", 5);
			%>		
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>