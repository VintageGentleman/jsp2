<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�޸���</title>
	<link rel="stylesheet" href="./css/mainMenu.css">
</head>
<body>
	<div id="insert">
		<form action="./board">
			<input type="text" name="content" placeholder="�޸� �Է�..."/>
			<input type="submit" value="�Է�" />
		</form>
		<button onclick="logout()">������</button>
	</div>
	
	<div id="board">
		<div class="post">
			<div>��ȣ</div>
			<div>�޸� ����</div>
		</div>
		<%
			@SuppressWarnings("unchecked")
			HashMap<String, ArrayList<String>> users = (HashMap<String, ArrayList<String>>)application.getAttribute("board"); 
			ArrayList<String> posts = users.get(session.getAttribute("ID"));
			
			int index = 0;
			for(String post : posts) {
				out.print("<div class=\"post\">"
							+ "<div>" + index++ + "</div>"
							+ "<div>" + post + "</div>"
						+ "</div>");
			}
		%>
	</div>
	<script src="./function.js"></script>
</body>
</html>