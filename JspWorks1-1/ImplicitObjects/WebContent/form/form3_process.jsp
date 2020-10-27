<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<head>

</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		Enumeration<String> enu = request.getParameterNames();
		while(enu.hasMoreElements()){
			String name = enu.nextElement();
			String[] values = request.getParameterValues(name);
			for(String value : values)
				out.println("name : " + name + ", value" + value + "<br>");
		}
	%>
</body>