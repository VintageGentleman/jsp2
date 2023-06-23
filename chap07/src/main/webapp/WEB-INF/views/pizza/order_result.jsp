<%@page import="chap07.model.OrderResult"%>
<%@page import="chap07.dao.PizzaOrderDAO_Impl"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	OrderResult result = (OrderResult)request.getAttribute("result");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>주문결과 확인</title>
</head>
<body>
	
	<h1>주문확인서</h1>
	<div id="homework">
		<dl>
			<dt>주문번호 : </dt>
			<dd><%=result.getOrder_id() %></dd>
			<dt>고객아이디 :</dt>
			<dd><%=result.getCustomer_id() %></dd>
			<dt>주소 : </dt>
			<dd><%=result.getAddress() %></dd>
			<dt>피자 : </dt>
			<dd><%=result.getPizza_name() %></dd>
			<dt>선택옵션 : </dt>
			<dd><%=result.getPizza_option() %></dd>
			<dt>가격 : </dt>
			<dd><%=result.getPizza_price() %></dd>
		</dl>
		<button onclick="location.href='/chap07/pizza/order';">주문페이지로</button>
	</div>
	
</body>
</html>