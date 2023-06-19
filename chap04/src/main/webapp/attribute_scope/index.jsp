<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Attribute Scope</title>
</head>
<body>
	<h3># Attribute</h3>
	
	<ul>
		<li>Parameter�� Ŭ���̾�Ʈ���� form���� �����ϴ� �����Ϳ��ٸ�
			Attribute�� �ϳ��� �������� �ٸ� �������� �����ϴ� �����ʹ�</li>
		<li>�� Attribute�� �������� ��ȿ�� ����(Scope)�� �����ϸ�
			�뵵�� �°� Ȱ���ؾ� �Ѵ�</li>
		<li>�����δ� application, session, request, page�� �ִ�</li>
	</ul>
	
	<h3># Attribute Scope�� Ư¡</h3>
	
	<dl>
		<dt>page scope</dt>
		<dd>�ش� JSP ������ ���ο����� ����� �� �ִ� ��Ʈ����Ʈ.
			page scope�� ����� attribute�� �ٸ� ������ forward�� �ص� ������� �ȴ�.</dd>
		<dt>request scope</dt>
		<dd>�ϳ��� ��û�� ����Ǳ� �������� �����Ǵ� attribute.
			forward, include������ �����ǰ� ������ �߻��ϸ� ������� �ȴ�.</dd>
		<dt>session scope</dt>
		<dd>�ϳ��� ������ ����ɶ����� ������ �����Ǵ� attribute.
			����ڰ� �ش� �������� ó�� ��û�� ������ �����κ��� ����ID�� �߱޹޴´�.
			�ش� ����ID�� ������ ���̸� Ŭ���̾�Ʈ �������� ������ �� �ִ� ������ ������ �ȴ�.
			����ID�� �ð��� ��� �����ų� �� �������� �����ϸ� ����ȴ�. (ex: ����)</dd>
		<dt>application scope</dt>
		<dd>WAS(�� ���ø����̼� ����)�� �����س��� attribute.
			������ ����Ǳ� ������ ��� �����ȴ�.
			���� ��ü�� ������ �� ��ŭ ����������, ������ 1���̹Ƿ� ���� ������� �� �� �ִ�.</dd>
	</dl>
	
	<button id="test-btn">��Ʈ����Ʈ �߰� �� �������غ���...</button>
	
	<script src="/chap04/javascript/index.js"></script>
</body>
</html>