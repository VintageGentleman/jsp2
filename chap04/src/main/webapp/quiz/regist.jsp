<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>ȸ������</title>
	<link rel="stylesheet" href="./css/regist.css">
</head>
<body>
	<form id="form1" action="./registServlet"></form>
	<div id="quiz">
		<div id="login">
			<input form="form1" type="text" name="ID" placeholder="���̵� �Է�" />
			<input form="form1" type="password" name="PW" placeholder="��й�ȣ �Է�" />
		</div>
		<div></div>
		<input form="form1" id="regist" class="btn" type="submit" value="ȸ������">
		<button class="btn" onclick="toIndex()">������</button>
	</div>
	<script src="./function.js"></script>
</body>
</html>