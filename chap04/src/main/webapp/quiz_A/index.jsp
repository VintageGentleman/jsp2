<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="chap04.quiz_a.MemoAddServlet, java.util.List"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Quiz_A</title>
</head>
<body>
	
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
	
	<% if(session.getAttribute("user") == null) { %>
		<div>
			<form action="./login" method="POST">
				���̵� <input type="text" name="user_id" />
				��й�ȣ <input type="password" name="user_pwd" />
				<button type="submit">�α���</button>
			</form>
			<button onclick="location.href='./register.jsp';">ȸ������</button>
		</div>
	 <% } else { %>
		<div>
			���� �α��� ���Դϴ�
			<ul>
				<%
					List<String> memo_list = MemoAddServlet.memos.get(session.getAttribute("user"));
				%>
				
				<% 
					if(memo_list != null)
					if(memo_list.size() == 0) { %>
					<li>�޸� ���� �����ϴ�</li>
				<%	} else { 
						for(String memo : memo_list) { %>
							<li><%=memo %></li>
				<% 		}
					} %>
			</ul>
			
			<h5># �޸� �߰�</h5>
			<form action="./memo/add" method="POST">
				<input type="text" name="memo" autocomplete="off" /> <input type="submit" value="add" />
			</form>
		</div>
	<% }%>
	
</body>
</html>