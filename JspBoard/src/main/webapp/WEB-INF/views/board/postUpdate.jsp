<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/assets/css" var="css"/>
<c:url value="/assets/js" var="js"/>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>�� ���� ����</title>
	<link rel="stylesheet" href="${css}/font.css">
	<link rel="stylesheet" href="${css}/postUpdate.css">
</head>
<body>
	<form id="post_form" action="./postUpdate" method="POST">
		<input type="hidden" name="post_id" value="${post.post_id}">
	</form>
	<div id="main">
		<div class="conDiv">
			<span>�۾���:</span><br>
			<input id="writer" type="text" name="post_writer" value="${post.post_writer}" form="post_form" readonly />
		</div>
		<div class="conDiv">
			<span>����:</span><br>
			<input type="text" name="post_title" value="${post.post_title}" form="post_form" required/>
		</div>
		<div class="conDiv">
			<span>����:</span><br>
			<textarea id="content" name="post_content"form="post_form">${post.post_content}</textarea>
		</div>
		<div>
			<button class="btn btn-header" type="submit" form="post_form">�����ϱ�</button>
		</div>
		<div>
			<button class="btn btn-header" onclick="moveHome()">�������</button>
		</div>
	</div>
	<script src="${js}/BasicFunction.js"></script>
</body>
</html>