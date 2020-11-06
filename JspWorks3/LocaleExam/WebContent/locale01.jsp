<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale, java.util.Date" %>
<%@ page import="java.text.DateFormat, java.text.NumberFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다국어 처리</title>
</head>
<body>
	<h3>현재 로케일의 국가, 날짜, 통화</h3>
	<%
		Locale locale = request.getLocale();
		Date cd = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.FULL,locale);
		NumberFormat nf = NumberFormat.getNumberInstance(locale);
	%>
	<p>국가 : <%=locale.getDisplayCountry() %>
	<p>날짜 : <%=df.format(cd) %>
	<p>숫자 (12345.67) : <%=nf.format(12345.67) %>
</body>
</html>