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
	<form action="./registServlet">
		<div id="quiz">
			<div id="login">
				<input type="text" name="ID" placeholder="���̵� �Է�" />
				<input type="password" name="PW" placeholder="��й�ȣ �Է�" />
			</div>
			<div></div>
			<input id="regist" type="submit" value="ȸ������">
		</div>
	</form>
</body>
</html>