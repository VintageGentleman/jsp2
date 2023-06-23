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
	<title>���� �ֹ� ����Ʈ</title>
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
	
	<h3>��� �ֹ����� ������</h3>

	<!-- /contextPath/pizza/order/all�� ���� -->
	<!-- ���⿡ ��� �ֹ��� ������ ���ּ��� -->
	
	<table>
		<tr>
			<th>�ֹ���ȣ</th>
			<th>�����̵�</th>
			<th>���ھ��̵�</th>
			<th>�ּ�</th>
			<th>���ڿɼ�</th>
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