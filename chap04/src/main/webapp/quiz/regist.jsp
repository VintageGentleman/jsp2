<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>회원가입</title>
</head>
<body>
	<form action="./registServlet">
		ID: <input type="text" name="ID" /> <br>
		PW: <input type="text" name="PW" /> <br>
		<input type="submit" value="회원가입">
	</form>
</body>
</html>