<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<title>Forwarding</title>
</head>
<body>

	<h3># Forward</h3>
	
	<ul>
		<li>����ڰ� ���� ��û�� �ش� �������� ó���ϴٰ�
			��û ������ �ٸ� �������� �Ѱ� �̾�޾� ó���ϰ� �ϴ� ��</li>
		<li>����ڰ� ���� ��û ��ü�� �״�� ���� �������� �����ϱ� ������
			��û�� �Ƿ��ִ� �Ķ���͵鵵 �״�� �Բ� ���޵ȴ�</li>
		<li>�� �����带 �̿��Ͽ� �ڹ� �ڵ尡 ���� ���Ǵ� ó��
			(controller, service)�� �������� �����ϰ�,
			html�ڵ尡 ���� ���Ǵ� ó��(view)�� JSP���� �̾ ������ �� �ִ�</li>
	</ul>
	
	<h3># Redirect</h3>
	
	<ul>
		<li>��û ���� Ŭ���̾�Ʈ�� �ٸ� �ּҷ� �ٽ� ��û�϶�� �����ϴ� ��</li>
		<li>�����̷�Ʈ ������ ���� Ŭ���̾�Ʈ(�� ������)������ ���ο� ��û��
			����� ������ ������ ���� ��û�� ���´� �Ķ���ʹ� �⺻������ �������� �� ����</li>
		<li></li>
	</ul>
	
	<form id="form1" action="/chap03/forwardtest" method="POST"></form>
		
	<input form="form1" type="text" name="type" value="drink" />
	<input form="form1" type="text" name="name" value="Americano" />
	<input form="form1" type="text" name="price" value="7000" />
	<input form="form1" type="text" name="qty" value="5" />
	<input form="form1" type="submit" value="������" />
	
</body>
</html>