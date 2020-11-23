<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*" %>
<%@ include file ="dbconn.jsp" %>
<%
	String productId = request.getParameter("id");

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql="SELECT * FROM product";
	try{
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if(rs.next()){
			sql="DELETE * FROM product WHERE p_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productId);
			pstmt.executeQuery();
		}else{
			out.println("일치하는 상품이 없습니다.");
			}
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
	
	response.sendRedirect("editProduct.jsp?edit=delete");
%>