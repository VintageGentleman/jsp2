<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Quiz</title>
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
	
	<form action="./login" method="POST">
		ID: <input type="text" name="ID" /> <br>
		PW: <input type="text" name="PW" /> <br>
		<input type="submit" value="�α���">
	</form>
	<button id="regist" onclick="regist()">ȸ������</button>
	<script src="./function.js"></script>
</body>
</html>