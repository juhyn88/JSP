<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBuy Mall</title>
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<style type="text/css">
	.jumbotron{
		background: url(./resources/images/channels4_banner.jpg);
		background-size: cover;
	}
	p{font-size: 1.2rem;}
	ul li{margin: 5px 10px;}
	footer .row{padding-top: 15px;}
</style>
</head>
<body>
	<nav class="navbar navbar-expand navbar-rgba(215,234,255) bg-warning">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">GoodBye Mall</a>
		</div>	
		<div>
			<ul class="nav navbar-nav">
				<li><a href="#">소개</a></li>
				<li><a href="#">카테고리</a></li>
				<li><a href="#">게시판</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1 class="text-center">Welcome To Shopping Mall</h1>
			<p class="text-center">좋은 품질, 합리적 가격을 만나보세요 </p>
		</div>
		<div class="row">
			<div class="col-md-4">
				<h4>다양한 상품</h4>
				<p>당신과 가장 가까운 마트... GoodBuy Mall, 장보기의 기쁨을 더합니다.</p>
				<p><a class="btn btn-primary" href="#" role="button">상세정보</a>
			</div>
			<div class="col-md-4">
				<h4>착한 가격</h4>
				<p>당신과 가장 가까운 마트... GoodBuy Mall, 장보기의 기쁨을 더합니다.</p>
				<p><a class="btn btn-secondary" href="#" role="button">상세정보</a>
			</div>
			<div class="col-md-4">
				<h4>빠른 배송</h4>
				<p>당신과 가장 가까운 마트... GoodBuy Mall, 장보기의 기쁨을 더합니다.</p>
				<p><a class="btn btn-success" href="#" role="button">상세정보</a>
			</div>
		</div>
	</div>
	<footer style="background:#000; color: #fff">
		<div class="container">
			<div class="row">
				<div class="col-sm-2" style="text-align:center">
					<p>Copyright &copy; 2020</p><p>GoodBuy 쇼핑</p>
			</div>
			<div class="col-sm-4"><p>대표자 소개</p><p>김 상</p></div>
		</div>
	</footer>
</body>
</html>