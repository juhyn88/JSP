<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.File" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<%
		String realFolder = "C:\\JspWorks3\\FileUpload\\WebContent\\resources\\upload";
		MultipartRequest multi = new MultipartRequest(request, realFolder,
									5*1024*1024,"utf-8", new DefaultFileRenamePolicy());
		String name = multi.getParameter("name");					//이름
		String subject = multi.getParameter("subject");			//제목
		
		Enumeration<String> files = multi.getFileNames();		//파일 정보 반환(가져옴)
		String file = files.nextElement();
		String filename = multi.getFilesystemName(file);			//실제 서버에 저장된 파일
		
	%>
	<p>요청 파라미터 이름 : <%=name %>
	<p>요청 파라미터 제목 : <%=subject %>
	<p><img src="resources/upload/<%=filename %>">
</body>
</html>