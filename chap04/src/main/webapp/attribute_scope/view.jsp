<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>�� ���� ��Ʈ����Ʈ ������ Ȯ���غ���</title>
</head>
<body>

	<h3># Ȯ�ο�</h3>

	<ul>
		<li>page: <%=pageContext.getAttribute("flavor") %></li>
		<li>request: <%=request.getAttribute("flavor") %></li>
		<li>session: <%=session.getAttribute("flavor") %></li>
		<li>application: <%=application.getAttribute("flavor") %></li>
	</ul>

</body>
</html>