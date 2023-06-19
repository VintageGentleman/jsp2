
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration, java.util.Date" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Session</title>
</head>
<body>
	
	<h3># Http Session</h3>
	
	<ol>
		<li>Ŭ���̾�Ʈ�� ���ʷ� �� ������ �����ϸ� ������ �ش� Ŭ���̾�Ʈ����
			����ID�� �߱��Ѵ�</li>
		<li>����ID�� Ŭ���̾�Ʈ�� �����ϴµ� ����� �� �������� Ư�� �κ�(��Ű)��
			�����ȴ� (�ٸ� �� �������� ������ �����ϸ� ���ο� ����ID�� �߱޹޴´�)</li>
		<li>�� �������� ��Ű�� ����Ǿ��ִ� ����ID��
			���� Ŭ���̾�Ʈ�� ��û�� ���������� �׻� �Բ� ���۵Ǿ� ���� ��ü�� ���� ������ �Ѵ�</li>
		<li>����ID�� �⺻������ ������� �� �������� ����� �� ��������� �����Ǿ� �ִ�</li>
		<li>���� ��ü�� �����͸� �߰��ϴ� ���� ������ �ڿ��� ���������� ����ŭ ����Ѵٴ� ���̱� ������
			�ʹ� ���� ���� �����͸� ���� ������ �����ϸ� �ȵȴ�</li>
	</ol>
	
	<hr>

	<%
		// ������ ��Ȱ�� ���� �ð��� ����
		session.setMaxInactiveInterval(900);
	%>

	<h3># ���� ���� ����</h3>
	
	<ul>
		<li>SESSION ID: <%=session.getId() %></li>
		<li>���� ���� �ð�: <%=new Date(session.getCreationTime()) %></li>
		<li>���������� Ȱ���� �ð�: <%=new Date(session.getLastAccessedTime()) %></li>
		<li>��Ȱ���� ���� ���� �ð�: <%=session.getMaxInactiveInterval() %> ��</li>
	</ul>
	
	<h3># ���� ���� ������ ������ ��� ����</h3>
	
	<div>
	<%
		// Enumeration : �ݺ����� ���� �� �ִ� �������̽�
		Enumeration<String> names = session.getAttributeNames();
	
		// session.Attribute�� ��� name�� value�� ��� 
		while(names.hasMoreElements()) {
			String name = names.nextElement();
			out.print(String.format("%s=%s<br>", name, session.getAttribute(name)));
		}
	%>
	</div>

	<div><a href="./invalidate">���� �����ϱ�</a></div>
	
	<h3># ���� ������ ������ �߰��غ���</h3>
	
	<div>
		<form action="/chap04/session/add">
			Key: 
			<select name="key">
				<option value="appetite">����Ÿ���� ����</option>
				<option value="main">���� ����</option>
				<option value="fruit">���� ����</option>
				<option value="dessert">����Ʈ ����</option>
			</select>	
			Value: <input type="text" name="value" />
			<button type="submit">�߰�</button>
		</form>	
	</div>
	
</body>
</html>