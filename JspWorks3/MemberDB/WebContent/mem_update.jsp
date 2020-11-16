<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.jmp.member.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 수정 폼</title>
<style type="text/css">
	#container{width: 600px; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 350px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	input[type="text"],[type="password"]{width: 150px; height: 20px;}
</style>
</head>
<jsp:useBean id="memDAO" class="org.jmp.member.MemberDAO" scope="application"/>
<jsp:setProperty property="*" name="memDAO"/>
<%
	String memId = request.getParameter("memberId");
	Member member = memDAO.getDB(memId);
%>
<script type="text/javascript">
	function checkPwd(){
		var form = document.updateForm;
		if(form.passwd.value != form.passwd_confirm.value){
			alert("비밀번호를 동일하게 입력해 주세요.")
			return false;
		} else {
			return true;
		}
	}
</script>
<body>
	<jsp:include page="menu.jsp"/>
	<div id="container">
		<h2>멤버 정보</h2>
		<hr>
		<form name="updateForm" action="update_process.jsp?memberId=<%=member.getMemberId() %>" method="post" onsubmit="return checkPwd()">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="memberId" value="<%=member.getMemberId() %>" disabled></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="passwd" value="<%=member.getPasswd() %>"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="text" name="passwd_confirm" value="<%=member.getPasswd() %>"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="<%=member.getName() %>"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<%if(member.getGender().equals("남")){ %>
						<input type="radio" name="gender" value="남" checked>남
						<input type="radio" name="gender" value="여" >여
						<%} else if(member.getGender().equals("여")){ %>
						<input type="radio" name="gender" value="남" >남
						<input type="radio" name="gender" value="여" checked>여
						<%} %>
					</td>
				</tr>		
				<tr>
					<td>가입일</td>
					<td><input type="date" name="joinDate" value="<%=member.getJoinDate() %>" disabled></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" onclick="location.href='mem_list.jsp'" value="목록">
						<input type="submit" value="저장">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>