<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>회원가입</title>
	<link rel="stylesheet" href="./css/regist.css">
</head>
<body>
	<form action="./registServlet">
		<div id="quiz">
			<div id="login">
				<input type="text" name="ID" placeholder="아이디 입력" />
				<input type="password" name="PW" placeholder="비밀번호 입력" />
			</div>
			<div></div>
			<input id="regist" type="submit" value="회원가입">
		</div>
	</form>
</body>
</html>