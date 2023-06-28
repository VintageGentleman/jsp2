<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Fragments Included</title>
	<style>
		#grid-container {
			display:grid;
			grid-template-columns: repeat(5, 1fr);
			gap: 5px;
		}
		#grid-container > div {
			border: solid 1px black;
		}

		.thead {
			font-weight: bold;
			text-align: center;
		}
		
		.footer {
			grid-column: 1 / 6;
		}
		
	</style>
</head>
<body>
	<c:set var="message" value="I am a message from index.jsp" scope="page"/>

	<div id="grid-container">
		<%@ include file="./frags/thead.jsp" %>
		<%@ include file="./frags/tbody.jsp" %>
	</div>
</body>
</html>