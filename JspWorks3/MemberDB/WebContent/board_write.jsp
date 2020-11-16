<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 화면</title>
<style>
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 140px; font-size: 30px; background: #eee; line-height: 120px; color: #333;}
	table{margin: 0 auto; width: 70%; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	input[type="text"]{width: 95%; height: 15px;}
	textarea{width: 95%; height: 300px;}
</style>
</head>
<body>
	<%
		String sessionId = null;
		if(session.getAttribute("sessionId") != null){
			sessionId = (String)session.getAttribute("sessionId");
		}
	%>
	<jsp:include page="menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>글쓰기 양식</h1>
		</div>
		<p>
		<form action="board_write_process.jsp" method="post">
			<table>
				<tr>
					<td><input type="text" name="title" placeholder="글제목"></td>
				</tr>
				<tr>
					<td><textarea name="content" placeholder="글내용"></textarea></td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="글제목">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>