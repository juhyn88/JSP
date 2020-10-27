<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산하기</title>
<style type="text/css">
#container{width: 600px; margin: 0 auto; text-align: center;}
</style>
</head>
<body>
	<div id="container">
		<h2>계산</h2>
		<p>선택한 상품 목록</p>
		<hr>
		<%
			ArrayList<String> list = (ArrayList)session.getAttribute("productList");
			for(String productName : list)
				out.println(productName + "<br>");
		%>
	</div>
</body>
</html>