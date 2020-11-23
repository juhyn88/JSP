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
   request.setCharacterEncoding("utf-8");

   String realFolder = "C:\\jspWorks3\\WebMarket\\WebContent\\upload";
   int maxSize = 5 * 1024 * 1024;
   String encType = "utf-8";
   DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
   
   MultipartRequest multi = new MultipartRequest(request, realFolder, 
                                    maxSize, encType, policy);
   
   String productId = multi.getParameter("productId");
   String name = multi.getParameter("name");
   String unitPrice = multi.getParameter("unitPrice");
   String description = multi.getParameter("description");
   String manufacturer = multi.getParameter("manufacturer");
   String category = multi.getParameter("category");
   String unitsInStock = multi.getParameter("unitsInStock");
   String condition = multi.getParameter("condition");
   
   Integer price;
   if(unitPrice.isEmpty())
      price = 0;
   else
      price = Integer.parseInt(unitPrice);
   
   long stock;
   if(unitsInStock.isEmpty())
      stock = 0;
   else
      stock = Long.valueOf(unitsInStock);
   
   Enumeration<String> files = multi.getFileNames();
   String fname = files.nextElement();
   String fileName = multi.getFilesystemName(fname);
   
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   String sql="SELECT * FROM product WHERE p_id=?";
   try{
      pstmt =conn.prepareStatement(sql);
      pstmt.setString(1, productId);
      rs= pstmt.executeQuery();
      if(rs.next()){
          if(fileName != null){
             sql = "UPDATE product SET p_name=?,p_unitPrice=?,p_description=?,"
                   +"p_manufacturer=?,p_category=?, p_unitsInStock=?,p_condition=?,"
                   +"p_fileName=? WHERE p_id=?";
             pstmt = conn.prepareStatement(sql);
             pstmt.setString(1, name);
             pstmt.setInt(2, price);
             pstmt.setString(3,description);
             pstmt.setString(4, manufacturer);
             pstmt.setString(5, category);
             pstmt.setLong(6, stock);
             pstmt.setString(7, condition);
             pstmt.setString(8, fileName);
             pstmt.setString(9, productId);
             pstmt.executeUpdate();
          }else{
             sql = "UPDATE product SET p_name=?,p_unitPrice=?,p_description=?,"
                   +"p_manufacturer=?,p_category=?, p_unitsInStock=?,p_condition=?"
                   +" WHERE p_id=?";
             
             pstmt = conn.prepareStatement(sql);
             pstmt.setString(1, name);
             pstmt.setInt(2, price);
             pstmt.setString(3,description);
             pstmt.setString(4, manufacturer);
             pstmt.setString(5, category);
             pstmt.setLong(6, stock);
             pstmt.setString(7, condition);
             pstmt.setString(8, productId);
             pstmt.executeUpdate();
          }
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
   response.sendRedirect("editProduct.jsp?edit=update");
   
%>