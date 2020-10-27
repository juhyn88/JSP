<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); //한글 인코딩 세팅
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 등록</title>
<style>
	#container{
		width:600px;
		margin: 0 auto;
		text-align: center;
	}
	#table, tr, td{
		width: 400px;
		margin: 0 auto;
		border: 1px solid #ccc;
		border-collapse: collapse;
	}
	#td{padding: 5px;}
	input[type="text"]{width: 200px; padding: 5px;}
	input[type="submit"],input[type="reset"]{font-size: 1.1em;}
</style>
</head>
<jsp:useBean id="addrbook" class="org.jmp.bean.AddrBook"></jsp:useBean>
<!-- AddrBook addrbook = new AddrBook() -->
<%--<jsp:setProperty property="username" name="addrbook"/>
<jsp:setProperty property="tel" name="addrbook"/>
<jsp:setProperty property="email" name="addrbook"/>
<jsp:setProperty property="sex" name="addrbook"/> --%>
<jsp:setProperty property="*" name="addrbook"/>

<jsp:useBean id="abDAO" class="org.jmp.bean.AddrBookDAO" scope="application" />
<jsp:setProperty property="*" name="abDAO"/>
<%
	abDAO.addAddress(addrbook);
	
%>
<body>
	<div id="container">
		<h2>주소록 등록</h2>
		<hr>
		<p>이 름 : <%=addrbook.getUsername() %>
		<p>전화번호 : <%=addrbook.getTel() %>
		<p>이메일 : <%=addrbook.getEmail() %>
		<p>성 별 : <%=addrbook.getSex() %>
		<hr>
		<a href="addrList.jsp">목록 보기</a>
	</div>
</body>
</html>