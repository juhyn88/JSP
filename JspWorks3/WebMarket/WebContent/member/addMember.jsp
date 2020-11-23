<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
</head>
<body>
	<%@ include file="/menu.jsp" %>
	<div class="jumbotron">
		<div class="container" align="center">
			<h1 class="display-3">회원 가입</h1>
		</div>
	</div>
	<div class="container" align="center">
		<form name="newMember" action="processAddMember" method="post"
					class="form-horizontal" onsubmit="return checkForm()">
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3"></div>
					<input type="text" name="id" class="form-control" placeholder="id">
			</div>
		</form>
	</div>
	<%@ include file="/footer.jsp" %>
	
	
</body>
</html>