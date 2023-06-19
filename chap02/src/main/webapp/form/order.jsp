<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// form �±׷� ���۹��� �����͸� request ��ü���� ���� �� �ִ�
	// �Ķ���ʹ� ������ ���ڿ� Ÿ������ �������Ƿ� �����ؾ� �Ѵ�
	String drink = request.getParameter("drink");
	String qty = request.getParameter("qty");
	
	// checkboxó�� �ϳ��� name�� ���� �������� ���
	// getParameter() ��� getParameterValues()�� ����� ���� �� �ִ� 
	String[] drinkOptions = request.getParameterValues("drink-option");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�ֹ� Ȯ�� ������</title>
</head>
<body>

	<h1>�ֹ� Ȯ��</h1>

	<p>
		<%=drink %>: x <%=qty %> <br />
		������ �ɼ�:
		<%
			// ������ ���ϴ� ��� null���� �����Ƿ�
			// null üũ�� ���� �ʰ� ����ϸ� ������ �� ���� �ִ�
			if(drinkOptions != null) {
				for (String drinkOption : drinkOptions) {
					out.print(drinkOption + ", ");
				}
			}
		%>	
	</p>

</body>
</html>