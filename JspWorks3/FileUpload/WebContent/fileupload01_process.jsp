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
<title>File Upload 예제</title>
</head>
<body>
	<%
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024, 
													"utf-8", new DefaultFileRenamePolicy());
	
		/*getPrameterNames() 모든 요청 파라미터의 이름과 값을 Enumeration 객체 타입으로 전달받는 메서드*/
		Enumeration<String> params = multi.getParameterNames();
		while(params.hasMoreElements()){
			String name = params.nextElement();
			String value = multi.getParameter(name);
			out.println(name + " = " + value + "<br>");
		}
		out.println("-------------------------------<br>");
		
		/*파일 관련 정보 가져오기*/	
		Enumeration<String> files = multi.getFileNames();
		while(files.hasMoreElements()){
			String name = files.nextElement();
			String filename = multi.getFilesystemName(name);			//서버에 저장될 파일
			String original = multi.getOriginalFileName(name);		//원본 파일
			File file =  multi.getFile(name);
			
			out.println("요청 파라미터 이름 : " + name + "<br>");
			out.println("저장 파일 이름 : " + filename + "<br>");
			out.println("원본 파일 이름 : " + original + "<br>");
			if(file != null){
				out.println("파일 크기 : " + file.length() + "<br>");
			}
		}
	%>
</body>
</html>