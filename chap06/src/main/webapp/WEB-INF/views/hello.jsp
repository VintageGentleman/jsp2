<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Hello</title>
</head>
<body>

	<h1>Hello!</h1>
	
	<p><%=request.getAttribute("data") %></p>
	
</body>
</html>