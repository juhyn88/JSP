<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String product = request.getParameter("product");
	
	ArrayList<String> productList = (ArrayList)session.getAttribute("productList");
	if(productList == null){
		productList = new ArrayList<>();
		session.setAttribute("productList", productList);
		//세션 설정(상품리스트, 세션에 선택된 상품들)
	}
	productList.add(product);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<script type="text/javascript">
		alert("<%=product%>이(가) 추가되었습니다.");
	</script>
</body>
</html>