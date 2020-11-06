<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags"  prefix="mytag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>itemTagTest</title>
<style type="text/css">
	#container{width: 100%; margin: 0 auto; text-align: center;}
</style>
</head>
<body>
	<h2>태그 파일 예제 - ListItem</h2>
	<hr>
	<i><mytag:item border="2" bgcolor="yellow">상품 목록</mytag:item></i>
</body>
</html>