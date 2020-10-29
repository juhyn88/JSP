<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.File" %>
<%
	String fileuploadPath = "C:\\upload2";

	DiskFileUpload upload = new DiskFileUpload();
	
	List items = upload.parseRequest(request);
	//폼 페이지에서 전송된 요청 파라미터를 전송받는 parseRequest() 사용
	
	Iterator params = items.iterator();	
	//요청 파라미터를 Iterator 객체로 변환
	
	while(params.hasNext()){
		FileItem fileItem = (FileItem)params.next();
		if(!fileItem.isFormField()){								//요청 파라미터가 일반데이터가 아닌 파일이라면
			String fileName = fileItem.getName();		//파일 이름을 가져와서
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			File file = new File(fileuploadPath+ "/" + fileName);
			fileItem.write(file);										//파일을 서버의 파일 저장 경로에 저장
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 예제</title>
</head>
<body>

</body>
</html>