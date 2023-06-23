<%@page import="chap08.dao.PizzaOrderDAO, chap08.model.PizzaOrder, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	PizzaOrderDAO dao = new PizzaOrderDAO(); 
	List<PizzaOrder> order_list = dao.getAllOrders();
	request.setAttribute("order_list", order_list);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>피자 주문 리스트</title>
	<style>
		table {
			border: 1px solid black;
			border-collapse: collapse;
		}
		th, td {
			border: 1px solid black;
			text-align: center;
		}
		th {
			background-color: yellow;
		}
	</style>
</head>
<body>
	
	<h3>모든 주문보기 페이지</h3>

	<!-- /contextPath/pizza/order/all로 접속 -->
	<!-- 여기에 모든 주문이 나오게 해주세요 -->
	
	<table>
		<tr>
			<th>주문번호</th>
			<th>고객아이디</th>
			<th>피자아이디</th>
			<th>주소</th>
			<th>피자옵션</th>
		</tr>
		<c:forEach items="${order_list}" var="order">
			<tr>
				<td>${order.order_id}</td>
				<td>${order.customer_id}</td>
				<td>${order.pizza_id}</td>
				<td>${order.address}</td>
				<td>${order.pizza_option}</td>
			<tr>	
		</c:forEach>	
	</table>
	
</body>
</html>