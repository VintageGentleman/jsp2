<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Form tag</title>
</head>
<body>

	<h3># Form tag</h3>
	
	<ul>
		<li>������ ��û�� ���� �� �����͸� �Բ� �Ǿ�� �� �ִ� �±�</li>
		<li>form ������ input �±׵鿡 ����ִ� ������ ������ ������ �ȴ�</li>
		<li>�Ǿ�� �����ʹ� �������� request ��ü���� Ȯ���� �� �ִ�</li>
		<li>�����ʹ� Key-Value ������� ���۵ȴ�</li>
		<li>input �±��� name �Ӽ� ���� Key ������ �Ѵ�</li>
		<li>input �±��� value �Ӽ� ���� Value ������ �Ѵ�</li>
	</ul>

	<hr>
	
	<h3># �ٸ� JSP�� �����Ϳ� �Բ� ��û ��������</h3>
	
	<!--  
		action �Ӽ�: ��û�� ���� URL�� ���� �Ӽ�
					�ش� form�±� ���ο��� submit�� �߻����� �� ��û�� ������
  	-->
	<form action="http://localhost:8090/chap02/form/order.jsp">
		<select name="drink">
			<option value="Americano">�Ƹ޸�ī��</option>
			<option value="GreenTea">����</option>
			<option value="RedTea">ȫ��</option>
			<option value="Water">��</option>
		</select>
		<!-- �ϳ��� name�� ���� value�� ������ ��쵵 �����Ѵ� (ex: checkbox) -->
		<div>
			<input type="checkbox" id="op1" name="drink-option" value="ice" />
			<label for="op1">���� ����</label> <br>
			<input type="checkbox" id="op2" name="drink-option" value="syrup"/>
			<label for="op2">�÷� �߰�</label> <br>
			<input type="checkbox" id="op3" name="drink-option" value="shot"/>
			<label for="op3">�� �߰�</label> <br>
		</div>
		<input type="number" name="qty" value="3" />
		<input type="submit" /> <!-- ���� ��ư -->
	</form>
	
	<hr>
	
	<h3># Servlet���� �����Ϳ� �Բ� ��û ��������</h3>
	
	<form action="http://localhost:8090/chap02/form/order">
		<select name="drink">
			<option value="Americano">�Ƹ޸�ī��</option>
			<option value="GreenTea">����</option>
			<option value="RedTea">ȫ��</option>
			<option value="Water">��</option>
		</select>
		<!-- �ϳ��� name�� ���� value�� ������ ��쵵 �����Ѵ� (ex: checkbox) -->
		<div>
			<input type="checkbox" id="op4" name="drink-option" value="ice" />
			<label for="op4">���� ����</label> <br>
			<input type="checkbox" id="op5" name="drink-option" value="syrup"/>
			<label for="op5">�÷� �߰�</label> <br>
			<input type="checkbox" id="op6" name="drink-option" value="shot"/>
			<label for="op6">�� �߰�</label> <br>
		</div>
		<input type="number" name="qty" value="3" />
		<input type="submit" /> <!-- ���� ��ư -->
	</form>

	<hr>

	<h3># GET method�� POST method</h3>
	
	<ul>
		<li>form�� method �Ӽ��� �������� ���� �� �⺻ ������ GET�̴�</li>
		<li>GET ������� form ��û�� ������
			�����Ͱ� ������ ���� �ּ�â�� ���̸鼭 ���۵ȴ�
			(uri?key=value&nbsp;key=value&nbsp;...)</li>
		<li>GET ����� �ּ�â�� ���̱� ������ ��й�ȣ ���� �ΰ��� ������ ���Ե�
			�����͸� �����⿡�� �������� �ʴ�</li>
		<li>POST ����� �ּ�â�� �����Ͱ� ������� �ʰ� ���۵ȴ�</li>
		<li>POST ��� ���۽� �����ʹ� request�� body��� �κп� ���ԵǾ� ���۵ȴ�</li>
	</ul>

	<h3># POST ������� ������ ������</h3>
	
	<!--
		 ���� ���(index.jsp)�� /chap02/form/index.jsp�̱� ������
		 ./order ����θ� ����ϸ� /chap02/form/order�� ���Եȴ�
	-->
	<form action="./order" method="POST">
		<!-- input type hidden : ���� �������� ������ �����ʹ� ���۵ȴ�  -->
		<input type="text" name="qty" value="123" />
		<input type="submit" value="POST ��û ������" /> 
	</form>
	
	<h3># GET ������� ������ ������</h3>
	
	<!-- GET��� ��û�� URL�ڿ� ���� �Ķ���͸� �Է��ϴ� �͵� �����ϴ� -->
	<a href="./order?qty=999">GET ��� ��û ������</a>
	
</body>
</html>