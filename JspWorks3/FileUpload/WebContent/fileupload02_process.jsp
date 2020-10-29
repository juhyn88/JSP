<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.File" %>
<%
	MultipartRequest multi = new MultipartRequest(request, "C:\\upload",
					5*1024*1024, "utf-8", new DefaultFileRenamePolicy());	
	String name1 = multi.getParameter("name1");
	String subject1 = multi.getParameter("subject1");

	String name2 = multi.getParameter("name2");
	String subject2 = multi.getParameter("subject2");

	String name3 = multi.getParameter("name3");
	String subject3 = multi.getParameter("subject3");
	
	Enumeration<String> files = multi.getFileNames();
	
	String file3 = files.nextElement();
	String filename3 = multi.getParameter(file3);
	
	String file2 = files.nextElement();
	String filename2 = multi.getParameter(file2);
	
	String file1 = files.nextElement();
	String filename1 = multi.getParameter(file1);	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload 예제</title>
</head>
<body>
	<table border="1">
		<tr>
			<th width="100">이름</th>
			<th width="100">제목</th>
			<th width="100">파일</th>
		</tr>
		<%
			out.println("<tr><td>" + name1 + "</td>");
			out.println("<tr><td>" + subject1 + "</td>");
			out.println("<tr><td>" + filename1 + "</td>");
		
			out.println("<tr><td>" + name2 + "</td>");
			out.println("<tr><td>" + subject2 + "</td>");
			out.println("<tr><td>" + filename2 + "</td>");
		
			out.println("<tr><td>" + name3 + "</td>");
			out.println("<tr><td>" + subject3 + "</td>");
			out.println("<tr><td>" + filename3 + "</td>");	
		%>
	</table>
</body>
</html>