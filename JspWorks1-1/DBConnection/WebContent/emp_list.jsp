<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.jmp.employee.Employee"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록 내용</title>
<style type="text/css">
#container{width: 600px; margin: 0 auto; text-align: center;}
table{width: 400px; margin: 0 auto; border-collapse: collapse;}
tr, td{border: 1px solid #222; padding: 10px;}
input[type="text"], input[type="password"]{width: 200px; height: 20px;}
</style>
</head>
<jsp:useBean id="empDAO" class="org.jmp.employee.EmployeeDAO" scope="application" />
<jsp:setProperty property="*" name="empDAO"/>
<body>
	<div id="container">
		<h2>사원 목록</h2>
		<hr>
		<p><a href="emp_form.jsp">사원 추가</a>
		<table>
			<tr>
				<td>사 번</td><td>비밀번호</td><td>이 름</td><td>가입일</td>			
			</tr>
			<%
				for(Employee employee : empDAO.getListAll()){
			%>
			<tr>
				<td><a href="emp_edit_form.jsp?companyId=<%=employee.getCompanyId() %>">
						<%=employee.getCompanyId() %></a></td>
				<td><%=employee.getPasswd() %></td>
				<td><%=employee.getName() %></td>
				<td><%=employee.getJoinDate() %></td>
			</tr>
			<%
				}
			%>
		</table>			
	</div>
</body>
</html>