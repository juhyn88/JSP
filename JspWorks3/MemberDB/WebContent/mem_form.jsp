<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 등록 폼</title>
<style type="text/css">
	#container{width: 600px; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 400px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
</style>
<script>
	function checkForm(){
		var form = document.regForm;
		var id = form.memberId.value;
		var pwd1 = form.passwd.value;
		var pwd2 = form.passwd_confirm.value;
		var name = form.name.value;
		
		var regExId = /^[a-zA-Z0-9]{4,10}$/; //영문 대소문자, 숫자 조합 4자에서 10자까지 입력
		
		if(!regExId.test(id) || id==""){
			alert("영문 대소문자, 숫자 조합 4자에서 10자까지 입력해 주세요");
			form.id.focus();
			return false;
		} else if (pwd1.length < 5 || pwd1.length > 12){
			alert("비밀번호는 5자에서 12자까지 입력해 주세요.");
			form.pwd1.select();
			return false;
		} else if(pwd1 != pwd2){
			alert("비밀번호를 동일하게 입력해 주세요.");
			form.pwd1.select();
		} else if(name == ""){
			alert("이름은 필수 입력사항입니다.");
			form.name.focus();
			return false;
		} else {
			form.submit();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div id="container">
		<h2>멤버 등록</h2>
		<hr>
		<form name="regForm" action="add_process.jsp" method="post">
			<table>
				<tr>
					<td>회원번호</td>
					<td><input type="text" name="memberId" placeholder="영문 대소문자, 숫자 조합 4자에서 10자까지 입력해 주세요"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="passwd" placeholder="5자이상 12자이하입니다."></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="passwd_confirm"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="radio" name="gender" value="남" checked>남
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