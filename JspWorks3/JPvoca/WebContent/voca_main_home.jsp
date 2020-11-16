<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 홈페이지</title>
<style>
.flex-container{
	width: 100%;
	height: 100vh;
	display: -wdbkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
		-ms-flex-align: center;
			align-items: center;
	-webkit-box-pack: center;
		-ms-flex-pack: center;
			justify-content: center;
	text-align: center
}
.first{
	border: 1px solid #555;
	flex: 1;
	width: 30%;
	height: 150px;
	box-sizing: border-box;
	text-align: center;
	background: url
}
.second{
	border: 1px solid #555;
	flex: 1;
	width: 30%;
	height: 150px;
	box-sizing: border-box;
	text-align: center;
	left-margin: 5px;
}
.third{
	border: 1px solid #555;
	flex: 1;
	width: 30%;
	height: 150px;
	box-sizing: border-box;
	text-align: center;
	left-margin: 5px;
}
p, a{text-decoration: none; text-align: center;}
</style>

</head>
<body>
	<div class="flex-container">
	<div class="first">
		<p><a href="voca_test_home.jsp">VOCA Test</a>
	</div>
	<div class="second">
		<p><a href="voca_result_home.jsp">Test Result</a>
	</div>
	<div class="third">
		<p><a href="voca_input_home.jsp">Make VOCA List</a>
	</div>
	</div>
</body>
</html>