<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>JSP Tag</title>
</head>
<body>
	<%-- 선언문 태그에 전체 메서드 사용하기 --%>
	<%! int sum(int x, int y){	//합계 메서드
			return x + y;
		}
	
		String makeItLower(String data){	
			//전달된 문자열을 소문자로 바꾸는 메서드
			return data.toLowerCase();
		}
	%>
	
	<%
		out.println("10 + 20 = " + sum(10, 20) + "<br>");
	
		out.println(makeItLower("THANK YOU"));
	%>
</body>
</html>