<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단어 목록 생성</title>
</head>

<jsp:useBean id="vocalist" class="org.jmp.jpvoca.VocaList"></jsp:useBean>
<jsp:setProperty property="kanji" name="vocalist"/>
<jsp:setProperty property="gana" name="vocalist"/>
<jsp:setProperty property="imi" name="vocalist"/>

<jsp:useBean id="vocadao" class="org.jmp.jpvoca.VocaListDAO"></jsp:useBean>
<jsp:setProperty property="*" name="vocadao"/>

<%
	vocadao.addVoca(vocalist);
%>
<jsp:forward page="/voca_input.jsp"></jsp:forward>

<body>

</body>
</html>