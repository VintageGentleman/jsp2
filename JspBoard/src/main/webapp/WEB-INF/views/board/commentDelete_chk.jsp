<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/assets/css" var="css"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>��й�ȣ Ȯ��</title>
	<link rel="stylesheet" href="${css}/chk.css">
</head>
<body>
	<form action="./commentDelete" method="POST">
		��й�ȣ �Է� : <input name="pwd" type="password" required /> 
		<input type="hidden" name="com_id" value=<%=request.getParameter("com_id")%>>
		<input type="hidden" name="post_id" value=<%=request.getParameter("post_id")%>>
	</form>
	<button class="btn" onclick="location.href='./postDetail?post_id=<%=request.getParameter("post_id")%>';">���ư���</button>
</body>
</html>