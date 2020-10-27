<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("username");
	session.setAttribute("userName", name);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택</title>
<style type="text/css">
#container{width: 600px; margin: 0 auto; text-align: center;}
</style>
</head>
<body>
	<div id="container">
		<h2>상품 선택</h2>
		<hr>
		<p><%=session.getAttribute("userName")  %>님이 로그인한 상태입니다.
		<form action="productAdd.jsp" method="post">
			<select name="product">
				<option>귤</option>
				<option>토마토</option>
				<option>감</option>
				<option>파인애플</option>
			</select>
			<input type="submit" value="추가"	>
		</form>
		<p><a href="checkOut.jsp" class="button">계산하기</a>
	</div>
</body>
</html>