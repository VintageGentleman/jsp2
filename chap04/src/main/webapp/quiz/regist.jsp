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
	<form id="form1" action="./registServlet"></form>
	<div id="quiz">
		<div id="login">
			<input form="form1" type="text" name="ID" placeholder="아이디 입력" />
			<input form="form1" type="password" name="PW" placeholder="비밀번호 입력" />
		</div>
		<div></div>
		<input form="form1" id="regist" class="btn" type="submit" value="회원가입">
		<button class="btn" onclick="toIndex()">나가기</button>
	</div>
	<script src="./function.js"></script>
</body>
</html>