<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.jmp.member.*" %>
<%@ page errorPage="exceptionNoPage.jsp" %>
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
	.button{border: 1px solid #333; border-radius: 2px; padding: 2px 5px;
			background: #eee; text-decoration: none; color: black; font-size: 0.9em;}
	.button:hover{background: #ddd;}
</style>
</head>
<jsp:useBean id="memDAO" class="org.jmp.member.MemberDAO" scope="application"/>
<jsp:setProperty property="*" name="memDAO"/>
<%
	String memId = request.getParameter("memberId");
	Member member = memDAO.getDB(memId);
%>
<body>
	<jsp:include page="menu.jsp"/>
	<%
		String sessionId = null;
		if(session.getAttribute("sessionId") != null){
			sessionId = (String)session.getAttribute("sessionId");
		}else{
			response.sendRedirect("main.jsp");
		}
	%>
	<div id="container">
		<h2>회원 정보</h2>
		<hr>
			<table>
				<tr>
					<td>회원 번호</td>
					<td><input type="text" name="memberId" value="<%=member.getMemberId() %>"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="passwd" value="<%=member.getPasswd() %>"></td>
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
						<input type="button" onclick="location.href='mem_list.jsp' " value="목록">
						<%
							String dbId = member.getMemberId();
							if(sessionId.equals(dbId)){
						%>
						<a href="mem_update.jsp?memberId=<%=member.getMemberId() %>" class="button">수정</a>
						<a onclick="return confirm('정말로 삭제하시겠습니까?')"
						   href="delete_process.jsp?memberId=<%=member.getMemberId() %>" class="button">삭제</a>
						<%} %>
					</td>
				</tr>
			</table>
	</div>
</body>
</html>