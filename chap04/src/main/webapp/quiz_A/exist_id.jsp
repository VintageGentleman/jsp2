<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
</head>
<body>

	<script>
		alert('<%= request.getParameter("user_id") %>�� �ߺ��� ���̵��Դϴ�!');
		history.back();
	</script>
	
</body>
</html>