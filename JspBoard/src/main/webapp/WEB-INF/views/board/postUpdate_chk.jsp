<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>��й�ȣ Ȯ��</title>
</head>
<body>
	<form action="./postUpdateChk" method="POST">
		��й�ȣ �Է� : <input name="pwd" type="password"/>
		<input type="hidden" name="post_id" value=<%=request.getParameter("post_id")%>>
	</form>
</body>
</html>