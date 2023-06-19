<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String crust = request.getParameter("crust");
	String cheese = request.getParameter("cheese");
	String[] toppings = request.getParameterValues("topping");
%>
<html>
<head>
<meta charset="UTF-8">
<title>주문 확인 페이지</title>
</head>
<body>
	<h1>주문 확인</h1>

	<p>
		크러스트 : <%=crust%> <br />
		선택한 옵션:
		<%
			if(toppings != null) {
				out.print(String.join(", ", toppings));
			} else {
				out.print("없음");
			}
		%> <br />
		치즈 : <%=cheese%>	
	</p>
</body>
</html>