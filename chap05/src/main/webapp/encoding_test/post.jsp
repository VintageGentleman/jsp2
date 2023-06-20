<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>POST data</title>
</head>
<body>
	한글? : <%=request.getParameter("price") %>
</body>
</html>