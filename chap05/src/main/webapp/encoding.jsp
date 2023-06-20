<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>���ڵ� �����ϱ�</title>
</head>
<style>
	:is(dl, ol) {
		line-height: 1.6;
	}
	
	ol {
		list-style-type: upper-alpha;	
	}
</style>
<body>
	<h3># JSP�� charset ����</h3>
	
	<dl>
		<dt>1. meta �±��� charset</dt>
		<dd>�� �������� �д� Ŭ���̾�Ʈ�� �� �������� �� �������� �ؼ��� �� ����� html charset</dd>
		<dt>2. contentType�� charset</dt>
		<dd>�� �������� �����ϴ� ������� Ÿ�� �� charset</dd>
		<dt>3. pageEncoding�� charset</dt>
		<dd>.jsp�� .java�� ��ȯ�� ���� charset</dd>
		<dt>4. ���� �� ���������� Eclipse�� ����ϰ� �ִ� charset</dt>
		<dd>�츮�� �ϵ� ��ũ�� ������ �� ����� charset
			���� ���� ��Ŭ�� �� properties���� Ȯ���� �� �ִ�</dd>
	</dl>
	
	<h3># GET������� �ѱ� ������</h3>
	
	<ol>
		<li>GET��� �Ķ���� ���� URL�� ���ԵǾ� ���޵Ǳ� ������ �������� �ؼ��Ѵ�. ������ ������ �ٲ���� �ȴ�.</li>
		<li>server.xml�� Connector�� URIEncoding="EUC-KR"�� �߰�</li>
		<li><a href="./encoding_test/servlet?taste=������">�������� ������</a></li>
		<li><a href="./encoding_test/get.jsp?taste=�ݶ�">.jsp���� ������</a></li>
	</ol>
	
	<h3># POST ������� �ѱ� ������</h3>
	
	<ol>
		<li>POST ��� �Ķ���� ���� ��û ��ü ���ο� �Ƿ��� ������ �����ϹǷ�
			URIEncoding���� �ذ���� �ʴ´�.</li>
		<li>request.setCharacterEncoding("EUC-KR")��
			��û ��ü�� ���ڵ� ����� �����Ͽ� �ذ��� �� �ִ�</li>
		<li><button form="form1" type="submit">�������� ������</button></li>
		<li><button form="form2" type="submit">.jsp���� ������</button></li>
	</ol>
	
	<form id="form1" action="./encoding_test/servlet" method="POST">
		<input type="hidden" name="price" value="õ�����" />
	</form>
	<form id="form2" action="./encoding_test/post.jsp" method="POST">
		<input type="hidden" name="price" value="�̸���õ��" />
	</form>
	
</body>
</html>