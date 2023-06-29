<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/assets/css" var="css"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>댓글 수정</title>
	<link rel="stylesheet" href="${css}/font.css">
	<link rel="stylesheet" href="${css}/commentUpdate.css">
</head>
<body>
	<form action="./commentUpdate" method="POST">
		<div class="com-item">
			<div>${comment.com_writer}</div>
			<div>
				<input type="text" name="com_content" value="${comment.com_content}" required/>
			</div>
			<div>
				<button type="submit">수정</button>
			</div>
			<div>
				<button onclick="location.href='./postDetail?post_id=${comment.post_id}';">취소</button>
			</div>
		</div>
		<input type="hidden" name="post_id" value="${comment.post_id}">
		<input type="hidden" name="com_id" value="${comment.com_id}">
	</form>
</body>
</html>