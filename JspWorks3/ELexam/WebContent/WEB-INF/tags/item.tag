<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name = "bgcolor" %>
<%@ attribute name = "border" %>

<jsp:useBean id="product" class="dto.Product" />

<h2><jsp:doBody /></h2>
<table border="${border}" bgcolor="${bgcolor}" width="200" align="center"> 
  <%
  	for(String item : product.getProductList()){
  		out.println("<tr><td>" + item + "</tr></td>");
  	}
  %>
  
</table>

