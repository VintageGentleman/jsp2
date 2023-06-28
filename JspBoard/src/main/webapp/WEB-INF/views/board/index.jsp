<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>게시판 홈</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/index.css">
</head>
<body>
	<h2>게시판</h2>
	<div id="header">
		<button onclick="movePostWrite()">쓰기</button>
	</div>
	<jsp:include page="./list/post_list.jsp" />
	<jsp:include page="./list/page_list.jsp" />
	
	<script src="<%=request.getContextPath()%>/assets/js/BasicFunction.js"></script>
</body>
</html>