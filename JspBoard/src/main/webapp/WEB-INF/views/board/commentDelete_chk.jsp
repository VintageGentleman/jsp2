<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>��й�ȣ Ȯ��</title>
</head>
<body>
	<form action="./commentDelete" method="POST">
		��й�ȣ �Է� : <input name="pwd" type="password"/>
		<input type="hidden" name="com_id" value=<%=request.getParameter("com_id")%>>
		<% System.out.println(request.getParameter("com_id")); %>
	</form>
</body>
</html>