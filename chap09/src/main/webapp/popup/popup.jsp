<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>버튼을 누르면 새 창에서 열리는 페이지</title>
</head>
<body>

	새 창에서 열릴 내용입니다... <br>

	<br>

	이 팝업창을 연 부모창은 opener라는 객체로 접근할 수 있습니다. <br>

	<!-- jstl이 아닌 일반 html에서는 상대경로로 webapp 경로를 잡아주지 못한다. 현재 위치만 감지하는 것으로 보임 -->
	<script src="<%=request.getContextPath() %>/resources/js/popup/popup.js"></script>
</body>
</html>