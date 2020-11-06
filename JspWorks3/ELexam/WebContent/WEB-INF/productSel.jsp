<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 예제</title>
<style type="text/css">
	#container{width: 100%; margin: 0 auto; text-align: center;}
</style>
</head>
<jsp:useBean id="product" class="dto.Product" />
<body>
	<div id="container">
		<h2>상품 선택</h2>
		<hr>
		<p>1. 선택한 상품은 : ${param.select }
		<p>2. num1 + num2 = ${product.num1 + product.num2 }
	</div>
</body>
</html>