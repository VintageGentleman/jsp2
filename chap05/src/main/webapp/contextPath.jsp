<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Context Path</title>
</head>
<body>
	
	<h3># Context Path</h3>
	
	<ul>
		<li>���� ������Ʈ�� Context�� ������ �� �ִ� ��θ� �ǹ��Ѵ�
			(���ؽ�Ʈ ��Ͻ� server.xml�� �����س��� ��)</li>
		<li>Eclipse���� Add and Remove�� ������Ʈ�� �߰��ϸ� �����δ�
			server.xml�� context�� �����ȴ�</li>
		<li>context�� path �Ӽ��� �����ϸ� ���� ��θ� ������ �� �ִ�</li>
		<li>reuqest.getContextPath()�� Ȱ���ϸ� server.xml��
			���ؽ�Ʈ ������ ���ϴ��� ��ȿ�� ��ũ�� ���� �� �ִ�</li>
	</ul>
	
	<a href="/chap05/encoding.jsp">encoding test�Ϸ� ���� (������ �ٲ�� ��ȿ���� ���� ���� �ִ� ��ũ)</a> <br>
	<a href="<%=request.getContextPath() %>/encoding.jsp">encoding test�Ϸ� ���� (������ �ٲ���� �׻� ��ȿ�� ��ũ)</a> <br>
	
	<script>
		// �ڹ� ��ũ��Ʈ������ let�� ���� ������ �߰�ȣ�� ����� �۵����� �ʴ� ��찡 �ִ�
		// ������ {} ���ο��� ����ϸ� �ٱ��� �������� ������ ��ġ�µ�
		// �̰��� hoist(�Ž����ö󰣴�)��� �Ѵ�
		num = 0;
		
		if(true) {
			let num = 10;
			console.log('if�� ����(���): ', num);
		}
		
		console.log('�ٱ���(�۷ι�) ����: ', num)
		
	</script>
	
</body>
</html>