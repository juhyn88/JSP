<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header 정보</title>
</head>
<body>
	<%
		/*String hostValue = request.getHeader("host");
		String alValue = request.getHeader("accept-Language");
	
		out.println("호스트명 : " + hostValue + "<br>");
		out.println("설정된 언어 : " + alValue + "<br>");*/
		
		//모든 정보 불러오기
		Enumeration<String> enu = request.getHeaderNames();
		while(enu.hasMoreElements()){
			String headerName = enu.nextElement();
			String headerValue = request.getHeader(headerName);
	%>
		<%=headerName %> : <%=headerValue %><br>
	<%
		}		
	%>
</body>
</html>