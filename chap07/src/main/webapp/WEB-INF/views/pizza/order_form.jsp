<%@page import="chap07.model.Pizza, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>���� �ֹ� ������</title>
</head>
<body>
	
	<h1>���ڸ� �ֹ��ϼ���</h1>
	
	<form id="form1" action="./new_order">
		��ID : <input type="text" name="customer_id" value="CUS123" readonly /> <br>
		<select name="pizza_id">

		<%
			@SuppressWarnings("unchecked")
			List<Pizza> pizzas = (List<Pizza>)request.getAttribute("pizzas"); 
		%>
		
		<% for(Pizza pizza : pizzas) { %>
			<option value="<%=pizza.getPizza_id()%>"><%=pizza.getPizza_name()%></option>
		<% } %>
		</select> <br>
		�ּ� : <input id="addr" type="text" name="address" size=50 placeholder="�ּҸ� �� �Է����ּ���.."/> <br>
		�߰� �ɼ� :
		<input id="extra_cheese" type="radio" name="pizza_option" value="111" />
		<label for="extra_cheese">ġ�� �߰�</label>
		<input id="extra_pine" type="radio" name="pizza_option" value="112" />
		<label for="extra_pine">���ξ��� �߰�</label>
		<input id="extra_hub" type="radio" name="pizza_option" value="113" /> 
		<label for="extra_hub">��� �߰�</label> <br>
		<input type="button" onclick="checkAddress()" value="�ֹ�" />
	</form>
	
	<script src="/chap07/assets/js/order_form.js"></script>
	
	<hr>
	
		<h1>���ڸ� �ֹ��ϼ���(�Բ� Ǯ��)</h1>
	
	<form action="./order" method="POST">
		��ID : <input type="text" name="customer_id2" value="CUS123" readonly /> <br>
		<select name="pizza_id2">
		<% for(Pizza pizza : pizzas) { %>
			<option value="<%=pizza.getPizza_id()%>"><%=pizza.getPizza_name()%></option>
		<% } %>
		</select> <br>
		�ּ� : <input type="text" name="address2" size=50 placeholder="�ּҸ� �� �Է����ּ���.."/> <br>
		�߰� �ɼ� :
		<input id="extra_cheese2" type="radio" name="pizza_option2" value="111" checked />
		<label for="extra_cheese2">ġ�� �߰�</label>
		<input id="extra_pine2" type="radio" name="pizza_option2" value="112" />
		<label for="extra_pine2">���ξ��� �߰�</label>
		<input id="extra_hub2" type="radio" name="pizza_option2" value="113" /> 
		<label for="extra_hub2">��� �߰�</label> <br>
		<input type="submit" value="�ֹ��ϱ�">
	</form>
	
</body>
</html>