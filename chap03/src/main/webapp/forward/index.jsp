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
	</ul>

	<h3># forward�� �뵵</h3>
	
	<ul>
		<li>������ �ڹ� �ڵ带 �ۼ��ϱ⿡ ���ϰ�
			JSP�� html �ڵ带 �ۼ��ϱ⿡ ���ϴ�</li>
		<li>�ϳ��� ��û�� ���ؼ� 1���� �������� �ڹٷ� ó���� ��� ��ģ ��
			�����带 ���� 2���� html �ڵ带 �����Ͽ� �����ϴ� ����� ���� ����Ѵ�</li>
		<li>�̰��� view�� controller�� �и���� �Ѵ�</li>
		<li>���� view �������� ��ΰ� ����Ǵ� ���� �ƴ϶� 
			forward�� ���� ������ �ּҰ� �״�� �����ȴ�
			(Ȯ���ڸ� ���� �� �ִ�)</li>
	</ul>	
	
	<h3># redirect�� �뵵</h3>
	
	<ul>
		<li>����ڰ� ���������� ���� ������� ������ ��츦 ���� ���� ���</li>
		<li>����ڰ� ��û�� �Բ� �Ǿ�´� �����͵��� ���ΰ�ħ���� �������� ���ϵ��� ���� �뵵</li>
		<li>ex> ����ڰ� ���� �� �Ŀ� ���ΰ�ħ���� ���� ���� ��� ��ϵǴ� ���� ���ƾ��Ѵ�</li>
	</ul>
	
	<h3># request�� attribute</h3>
	
	<ul>
		<li>ù ��° �������� �� ó�� ������� view ���������� ����ϰ� ���� ��
			��û ��ü�� attribute�� �Ǿ� ���� �� �ִ�</li>
		<li>�Ķ���Ϳ� ���������� Key-Value ����� ����Ѵ�</li>
		<li>�Ǿ���� �� : setAttribute("key", value),
			���� �� : getAttribute("key")</li>
		<li>��Ʈ����Ʈ�� �Ǿ� ���� ���� ���� �� �ش� Ÿ���� Object�� ���´�
			(�ʿ��ϴٸ� �ٿ� ĳ���� �Ͽ� ������� ����� �� �ִ�)</li>
	</ul>
	
	<hr>
	
	<h3># forward</h3>
	
	<form id="form1" action="/chap03/forwardtest" method="POST"></form>
		
	<input form="form1" type="text" name="type" value="drink" />
	<input form="form1" type="text" name="name" value="Americano" />
	<input form="form1" type="text" name="price" value="7000" />
	<input form="form1" type="text" name="qty" value="5" />
	<input form="form1" type="submit" value="������" />
	
	<hr>
	
	<h3># redirect</h3>
	
	<form id="form2" action="/chap03/redirect_test" method="POST"></form>
		
	<input form="form2" type="text" name="type" value="drink" />
	<input form="form2" type="text" name="name" value="Americano" />
	<input form="form2" type="text" name="price" value="7000" />
	<input form="form2" type="text" name="qty" value="5" />
	<input form="form2" type="submit" value="������" />
	
</body>
</html>