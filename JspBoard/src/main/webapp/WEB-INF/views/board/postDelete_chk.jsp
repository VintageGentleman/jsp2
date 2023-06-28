<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>비밀번호 확인</title>
</head>
<body>
	<form action="./postDelete" method="POST">
		비밀번호 입력 : <input name="pwd" type="password" required/>
		<input type="hidden" name="post_id" value=<%=request.getParameter("post_id")%>>
	</form>
</body>
</html>