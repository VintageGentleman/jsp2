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
		<li>�α��ο� �����ϰ� ���� ������ �����Ǵ� ���� �α����� �����Ǿ�� �Ѵ�</li>
		<li>�α����� ����� ���ο� �޸� ����� �� �ְ�, ������ ����ߴ� �޸�鵵 �� �� �ִ�</li> 
		<li>������ �������� �� ��� ȸ���� ������� ��� ����</li>
		<li>������ ������ ������ ���� ��� ������ ���� ���� �ؿ� ����� �� ��
			(������ quiz ��Ű���� �� ��)</li>
	</ul>
	
	<hr>
	
	<h3>Quiz</h3>
	
	<% if(session.getAttribute("ID") == null) { %>
		<div id="loginDiv">
			<form action="./login" id="form" method="POST"></form>
			<div id="quiz" class="layoutDiv">
				<div id="login">
					<input form="form" type="text" name="ID" placeholder="���̵� �Է�" autocomplete="off" />
					<input form="form" type="password" name="PW" placeholder="��й�ȣ �Է�" />
				</div>
				<div></div>
				<input id="loginBtn" class="btn" form="form" type="submit" value="�α���">
				<button id="regist" class="btn" onclick="regist()">ȸ������</button>
			</div>
		</div>
	<% } else { %>
		<div id="basicDiv" class="layoutDiv">
			<div>ȯ���մϴ� <br>'<%=session.getAttribute("ID")%>'��</div>
			<button onclick="toMain()" class="btn">�޸𺸱�</button>
			<button onclick="logout()" class="btn">�α׾ƿ�</button>
		</div>
	<% } %>
	
	<script src="./function.js"></script>
</body>
</html>