<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록 폼</title>
<style type="text/css">
	#container{width: 600px; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 400px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	input[type="text"], input[type="password"]{width: 200px; height: 20px;}
</style>
<script src="resources/js/validation.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div id="container">
		<h2>회원 등록</h2>
		<hr>
		<form name="regform" action="add_process.jsp" method="post">
			<table>
				<tr>
					<td>회원 번호</td>
					<td><input type="text" name="memberId"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="passwd"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="passwd_confirm"></td>
				</tr>
				<tr>
					<td>이 름</td>
					<td><input type="text" name="name"></td>
				</tr>	
				<tr>
					<td>성 별</td>
					<td><input type="radio" name="gender" value="남">남
							<input type="radio" name="gender" value="여">여
					</td>
				</tr>	
				<tr>
					<td colspan="2">
						<input type="button" value="등록" onclick="checkForm()">
						<input type="reset" value="취소">
					</td>
				</tr>								
			</table>					
		</form>
	</div>
</body>
</html>