<%@page import="chap07.model.OrderResult"%>
<%@page import="chap07.dao.PizzaOrderDAO_Impl"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>�ֹ���� Ȯ��</title>
</head>
<body>
	<% 
		String order_id = request.getParameter("order_id");
		PizzaOrderDAO_Impl dao = new PizzaOrderDAO_Impl();
		OrderResult result = dao.getResult(order_id);
	%>
	
	<h1>�ֹ�Ȯ�μ�</h1>
	<dl>
		<dt>�ֹ���ȣ : </dt>
		<dd><%=result.getOrder_id() %></dd>
		<dt>�����̵� :</dt>
		<dd><%=result.getCustomer_id() %></dd>
		<dt>�ּ� : </dt>
		<dd><%=result.getAddress() %></dd>
		<dt>���� : </dt>
		<dd><%=result.getPizza_name() %></dd>
		<dt>���ÿɼ� : </dt>
		<dd><%=result.getPizza_option() %></dd>
		<dt>���� : </dt>
		<dd><%=result.getPizza_price() %></dd>
	</dl>
	
</body>
</html>