<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.jmp.member.Member"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보 화면</title>
<style type="text/css">
	#container{width: 600px; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 350px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	input[type="text"], input[type="password"]{width: 150px; height: 20px;}
	.button{
		border: 1px solid #333; border-radius: 2px; padding: 2px 5px; 
		text-decoration: none; background: #eee; color: black; font-size: 0.9em;}
	.button:hover{background: #ddd;}
</style>
</head>
<jsp:useBean id="memDAO" class="org.jmp.member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>
<%
	int memId = Integer.parseInt(request.getParameter("memberId"));
	Member member = memDAO.getOneDB(memId);	
%>
<body>
	<div id="container">
		<h2>사원 정보</h2>
		<hr>
		<p><a href="mem_list.jsp">사원 목록으로</a>
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="memberId" value="<%=member.getMemberId() %>"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="passwd" value="<%=member.getPasswd() %>"></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name" value="<%=member.getName() %>"></td>
			</tr>	
			<tr>
				<td>가입일</td>
				<td><input type="date" name="joinDate" value="<%=member.getJoinDate() %>"></td>
			</tr>	
			<tr>
				<td colspan="2">
					<a href="mem_update.jsp?memberId=<%=member.getMemberId() %>" class="button">수정</a>
					<a href="mem_delete_process.jsp?memberId=<%=member.getMemberId() %>"
								onclick="return confirm('정말로 삭제하시겠습니까?')" class="button">삭제</a>
				</td>
			</tr>	
		</table>			
	</div>
</body>
</html>