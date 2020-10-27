<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="employee" class="org.jmp.employee.Employee" />
<jsp:setProperty property="*" name="employee"/>
	
<jsp:useBean id="empDAO" class="org.jmp.employee.EmployeeDAO" scope="application" />
<jsp:setProperty property="*" name="empDAO"/>

<%
	int id = employee.getCompanyId();
	String pw = employee.getPasswd();
	
	if(empDAO.login(id, pw)){
		response.sendRedirect("emp_list.jsp");
	}else{
		out.println("<script>alert('사번이나 이름이 일치하지 않습니다.'); history.go(-1);</script>");
	}

%>