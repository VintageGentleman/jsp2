<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/assets/css" var="css"/>
<c:url value="/assets/js" var="js"/>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>�۾���</title>
	<link rel="stylesheet" href="${css}/font.css">
	<link rel="stylesheet" href="${css}/postWrite.css">
</head>
<body>
	<form id="post_form" action="./postWrite" method="POST"></form>
	<div id="main">
		<div class="conDiv">
			<span>�۾���:</span><br>
			<input type="text" name="post_writer" form="post_form" required/>
		</div>
		<div class="conDiv">
			<span>��й�ȣ:</span><br>
			<input type="password" name="post_password" form="post_form" required/>
		</div>
		<div class="conDiv">
			<span>����:</span><br>
			<input type="text" name="post_title" form="post_form" required/>
		</div>
		<div class="conDiv">
			<span>����:</span><br>
			<textarea id="content" name="post_content" form="post_form"></textarea>
		</div>
		<div>
			<button class="btn btn-header" type="submit" form="post_form">�۾���</button>
		</div>
		<div>
			<button class="btn btn-header" onclick="moveHome()">���ư���</button>
		</div>
	</div>
	<script src="${js}/BasicFunction.js"></script>
</body>
</html>