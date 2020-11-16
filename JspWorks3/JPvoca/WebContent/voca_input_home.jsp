<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.jmp.jpvoca.VocaList"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단어 입력 화면</title>

<style type="text/css">
#container{margin: 0 auto; text-align: center; }
#upperpart{border: 1px solid #555; }
table, tr, td{margin: 0 auto; border-collapse: collapse; padding: 5px; font-size: 0.9em;}
input[type="submit"], input[type="reset"] {
width:40px; padding: 3px; margin: 0 auto; text-align: center; border-radius: 2px;
border: 0px;}
</style>
</head>
<jsp:useBean id="vocadao" class="org.jmp.jpvoca.VocaListDAO"></jsp:useBean>
<jsp:setProperty property="*" name="vocadao"/>
<body>
	<div id="container">
		<h4>단어 목록 생성</h4>
		<hr>
			<form action="voca_input_add.jsp" method="post">
			<table>
				<tr id="upperpart">
					<td>漢字</td>
					<td>カナ</td>
					<td>意味</td>
				</tr>
				<tr id="upperpart">
					<td><input type="text" name="kanji"></td>
					<td><input type="text" name="gana"></td>
					<td><input type="text" name="imi"></td>
				</tr>
				<tr>
					<td id="lowerpart" colspan="3">
						<input type="submit" value="입력">
						<input type="reset"  value="취소">
					</td>
				</tr>
			</table>
			</form>
	</div>
	<% out.println("<br>"); %>
	<% out.println("<br>"); %>
<jsp:include page="/voca_input_list.jsp"></jsp:include>
</body>
</html>