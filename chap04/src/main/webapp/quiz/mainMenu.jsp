<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>메모장</title>
	<link rel="stylesheet" href="./css/mainMenu.css">
</head>
<body>
	<div id="insert">
		<form action="./board">
			<input type="text" name="content" placeholder="메모 입력..."/>
			<input type="submit" value="입력" />
		</form>
		<button onclick="logout()">나가기</button>
	</div>
	
	<div id="board">
		<div class="post">
			<div>번호</div>
			<div>메모 내용</div>
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