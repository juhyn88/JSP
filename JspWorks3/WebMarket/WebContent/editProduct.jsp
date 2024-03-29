<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 편집</title>
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<script type="text/javascript">
	function deleteConfirm(id){
		if(confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "./deleteProduct.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<%
	String edit = request.getParameter("edit");
%>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 편집</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "SELECT * FROM product";
			
				try{
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while(rs.next()){
			
			%>
			<div class="col-md-4">
				<img src="./upload/<%=rs.getString("p_fileName") %>" style="width:100%">
				<h3><%=rs.getString("p_name") %></h3>
				<p><%=rs.getString("p_description") %></p>
				<p><%=rs.getString("p_UnitPrice") %>원</p>
				<p><%
					if(edit.equals("update")){
					%>
					<a href="./updateProduct.jsp?id=<%=rs.getString("p_id") %>"
					class ="btn btn-sucess" role="button">수정&raquo;</a></p>
					<% 
						}else if(edit.equals("delete")){
					%>
					<a href="#" onclick="return deleteConfirm('<%=rs.getString("p_id")%>')"
					class="btn btn-danger" role="button">삭제 &raquao;</a>
					<% } %>
			</div>
			<%
					}
					rs.close();
				}catch(Exception e){
					e.printStackTrace();
				}finally{
					if(rs != null)
						rs.close();
					if(pstmt != null)
						pstmt.close();
					if(conn != null)
						conn.close();
				}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>