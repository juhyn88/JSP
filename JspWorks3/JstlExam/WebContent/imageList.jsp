<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 목록</title>
<link rel="stylesheet" href="css/list.css">
</head>
<body>
	<ul class="list">
		<li>
			<span style="margin-left:50px">이미지</span>
			<span>이미지 이름</span>
			<span>선택하기</span>
		</li>
		<c:forEach var="i" begin="1" end="9" step="1">
			<li>
				<a href="#" style="margin-left:50px">
					<img src="images/wick.jpg" width="80" height="80"></a>
				<a href="#"><strong>이미지 이름 : 윅${ i }</strong></a>
				<a href="#"><input name="chk${i}" type="checkbox"></a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>