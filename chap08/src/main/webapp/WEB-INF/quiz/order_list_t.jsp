<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>피자 주문 리스트</title>
</head>
<body>
		
	<!-- /contextPath/pizza/order/all_t로 접속 -->
	
	<h3>모든 주문보기 페이지</h3>

	<!-- 여기에 모든 주문이 나오게 해주세요 -->
	
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