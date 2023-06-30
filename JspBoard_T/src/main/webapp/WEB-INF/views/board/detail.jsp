<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/board/js/detail.js" var="detail_js" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>${param.id}�� �� ����</title>
</head>
<body>

	<h1>�� ��ȣ${param.id} �� ����</h1>
	
	���� : ${board.board_title} <br>
	���� : ${board.board_content} <br>
	�۾��� : ${board.writer} <br>
	��ȸ�� : ${board.board_view} <br>
	��й�ȣ : ${board.board_pw} <br>
	
	<button id="modify-btn" data-id="${param.id}">����/����</button>
	<button id="list-btn">���</button>
	
	<script src="${detail_js}"> </script>

</body>
</html>