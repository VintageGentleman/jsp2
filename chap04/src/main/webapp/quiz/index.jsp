<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Quiz</title>
	<link rel="stylesheet" href="./css/index.css">
</head>
<body>
	
	<%
		if(application.getAttribute("board") == null) {
			HashMap<String, ArrayList<String>> users = new HashMap<>();
			application.setAttribute("board", users);
		}
	%>
	
	<h3># Quiz�� �䱸����</h3>
	
	<ul>
		<li>���̵�� ��й�ȣ�� �Է��ϸ� �α����� �� �� �ִ�</li>
		<li>ȸ�������� ���̵�� ��й�ȣ�� �Է��ϸ� �Ϸ�ȴ� (���̵� �ߺ��� üũ�ؾ� ��) </li>
		<li>�α����� ����� ���ο� �޸� ����� �� �ְ�, 
			������ ����ߴ� �޸�鵵 �� �� �ִ�</li>
		<li>������ �������� �� ��� ȸ���� ������� ��� ����</li>
		<li>������ ������ ������ ���� ��� ������ ���� ���� �ؿ� ����� �� ��
			(������ quiz ��Ű���� �� ��)</li>
	</ul>
	
	<hr>
	
	<h3>Quiz</h3>
	
	
	<form action="./login" id="form" method="POST"></form>
	<div id="quiz">
		<div id="login">
			<input form="form" type="text" name="ID" placeholder="���̵� �Է�" />
			<input form="form" type="password" name="PW" placeholder="��й�ȣ �Է�" />
		</div>
		<div></div>
		<input id="loginBtn" form="form" type="submit" value="�α���">
		<button id="regist" onclick="regist()">ȸ������</button>
	</div>
	
	<script src="./function.js"></script>
</body>
</html>