<%@page import="chap07.model.Pizza, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>피자 주문 페이지</title>
</head>
<body>
	
	<h1>피자를 주문하세요</h1>
	
	<form id="form1" action="./new_order">
		고객ID : <input type="text" name="customer_id" value="CUS123" readonly /> <br>
		<select name="pizza_id">

		<%
			@SuppressWarnings("unchecked")
			List<Pizza> pizzas = (List<Pizza>)request.getAttribute("pizzas"); 
		%>
		
		<% for(Pizza pizza : pizzas) { %>
			<option value="<%=pizza.getPizza_id()%>"><%=pizza.getPizza_name()%></option>
		<% } %>
		</select> <br>
		주소 : <input id="addr" type="text" name="address" size=50 placeholder="주소를 꼭 입력해주세요.."/> <br>
		추가 옵션 :
		<input id="extra_cheese" type="radio" name="pizza_option" value="111" />
		<label for="extra_cheese">치즈 추가</label>
		<input id="extra_pine" type="radio" name="pizza_option" value="112" />
		<label for="extra_pine">파인애플 추가</label>
		<input id="extra_hub" type="radio" name="pizza_option" value="113" /> 
		<label for="extra_hub">허브 추가</label> <br>
		<input type="button" onclick="checkAddress()" value="주문" />
	</form>
	
	<script src="/chap07/assets/js/order_form.js"></script>
	
	<hr>
	
		<h1>피자를 주문하세요(함께 풀기)</h1>
	
	<form action="./order" method="POST">
		고객ID : <input type="text" name="customer_id2" value="CUS123" readonly /> <br>
		<select name="pizza_id2">
		<% for(Pizza pizza : pizzas) { %>
			<option value="<%=pizza.getPizza_id()%>"><%=pizza.getPizza_name()%></option>
		<% } %>
		</select> <br>
		주소 : <input type="text" name="address2" size=50 placeholder="주소를 꼭 입력해주세요.."/> <br>
		추가 옵션 :
		<input id="extra_cheese2" type="radio" name="pizza_option2" value="111" checked />
		<label for="extra_cheese2">치즈 추가</label>
		<input id="extra_pine2" type="radio" name="pizza_option2" value="112" />
		<label for="extra_pine2">파인애플 추가</label>
		<input id="extra_hub2" type="radio" name="pizza_option2" value="113" /> 
		<label for="extra_hub2">허브 추가</label> <br>
		<input type="submit" value="주문하기">
	</form>
	
</body>
</html>