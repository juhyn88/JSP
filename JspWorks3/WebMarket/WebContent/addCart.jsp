<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository" %>
<%@ page import="dto.Product" %>
<%@ page import="java.util.ArrayList" %>
<%
	String id = request.getParameter("id");
	if(id==null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	ProductRepository dao = ProductRepository.getInstance();  //상품 접근클래스의 객체 생성
	
	Product product = dao.getProductById(id);  //해당 상품 검색
	if(product == null){
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	Product goods = product;  //상품 1개
	ArrayList<Product> goodsList = dao.getAllProducts();
	 for(int i=0; i<goodsList.size(); i++){  //상품 정보을 얻어와서 ArrayList객체에 저장
		goods = goodsList.get(i);
		if(goods.getProductId().equals(id)){//요청 파라미터의 상품이 존재하는지 검사
			break;
		}
	}
	
	ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartlist");
	if(list==null){
		list = new ArrayList<>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt = 0;
	/*Product goodsQnt = new Product();
	for(int i=0; i<list.size(); i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getProductId().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	} */
	for(Product goodsQnt : list){  //향상 for - 여러개 주문했을 경우
		if(goodsQnt.getProductId().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
		 	goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	if(cnt==0){
		goods.setQuantity(1);
		list.add(goods);
	}
	
	response.sendRedirect("product.jsp?id="  + id);
%>