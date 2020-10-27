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
	int comId = Integer.parseInt(request.getParameter("companyId"));
	if(empDAO.delete(comId)){
		response.sendRedirect("emp_list.jsp"); 
	}

%>