<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CORE 태그</title>
<script type="text/javascript">
function check(){
	var form = document.form1;
	var num = form.number.value;
	var regExNum = /^[0-9]*$/;
		
	if(!regExNum.test(num) || num == " "  ){
			alert("숫자를 입력해 주세요.");
			form.number.select();
	}else{
		form.submit();		//오류가 없다면 전송
	}
}
</script>
</head>
<body>
	<form name="form1" action="core02_process.jsp" method="get">
		<p>숫자 : <input type="text" name="number">
		<p><input type="button" value="전송" onclick=check()>
	</form>
</body>
</html>
