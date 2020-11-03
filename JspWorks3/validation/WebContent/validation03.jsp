<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<script type="text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		
		if(form.id.value==""){
			alert("아이디를 입력해 주세요.")
			form.id.focus();
			return;
		}else if(form.pwd.value==""){
			alert("비밀번호를 입력해 주세요.")
			form.pwd.focus();
			return;
		}
		
		//예를 들면 HAPPY
		for(i=0; i<form.id.value.length; i++){
			var ch = form.id.value.charAt(i);
			
			if((ch<'a' || ch>'z') && (ch>'A' || ch<'Z') && (ch>'0' || ch<'9')){
				alert("아이디는 영문 소문자만 입력 가능합니다.");
				form.id.select();			//id로 돌아가서 선택됨
				return;						//빠져나옴(종료) = break와 같음
			}
			
			if(isNaN(form.pwd.value)){		//isNaN() -> 숫자가 아니면(Not a Number)
				alert("비밀번호는 숫자만 입력 가능합니다.");
				form.pwd.select();
				return;
			}
		}
		form.submit();					//체크가 끝나면 폼 전송
	}
</script>
</head>
<body>
	<form name="loginForm" action="validation01_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="pwd">
		<p><input type="button" value="로그인" onclick="checkLogin()">	
	</form>
</body>
</html>