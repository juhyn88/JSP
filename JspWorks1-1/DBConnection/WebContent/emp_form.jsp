<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록 폼</title>
<style type="text/css">
#container{width: 600px; margin: 0 auto; text-align: center;}
table{width: 400px; margin: 0 auto; border-collapse: collapse;}
tr, td{border: 1px solid #222; padding: 10px;}
input[type="text"], input[type="password"]{width: 200px; height: 20px;}
</style>
</head>
<body>
	<div id="container">
		<h2>사원 등록</h2>
		<hr>
		<form action="emp_add.jsp" method="post">
			<table>
				<tr>
					<td>사 번</td>
					<td><input type="text" name="companyId"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="passwd"></td>
				</tr>
				<tr>
					<td>이 름</td>
					<td><input type="text" name="name"></td>
				</tr>	
				<tr>
					<td colspan="2">
						<input type="submit" value="등록">
						<input type="reset" value="취소">
					</td>
				</tr>								
			</table>					
		</form>
	</div>
</body>
</html>