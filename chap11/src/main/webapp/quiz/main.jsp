<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Main</title>
	<link rel="stylesheet" href="../assets/css/article.css">
</head>
<body>
	
	<div id="main">
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>
		<div id="mbody">
			<jsp:include page="section.jsp"/>
			<jsp:include page="article.jsp"/>
		</div>
		<jsp:include page="aside.jsp"/>
		<jsp:include page="footer.jsp"/>
	</div>	
	
	<script src="../assests/js/main.js"></script>
</body>
</html>