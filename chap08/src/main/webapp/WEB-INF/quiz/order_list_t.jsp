<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>���� �ֹ� ����Ʈ</title>
</head>
<body>
		
	<!-- /contextPath/pizza/order/all_t�� ���� -->
	
	<h3>��� �ֹ����� ������</h3>

	<!-- ���⿡ ��� �ֹ��� ������ ���ּ��� -->
	
	<div>
		<div>ORDER_ID</div>
		<div>PIZZA_ID</div>
		<div>ADDRESS</div>
		<c:forEach items="${orders}" var="order">
		<div>
			${order.order_id }
			${order.pizza_id }
			${order.address}
		</div>
		</c:forEach>
	</div>
	
</body>
</html>