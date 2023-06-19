<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<title>메모장</title>
	</head>
<body>
	<div id="board">
	<%
		HashMap<String, ArrayList<String>> users = (HashMap<String, ArrayList<String>>)application.getAttribute("board"); 
		ArrayList<String> posts = users.get(session.getAttribute("ID"));
	
		for(String post : posts) {
			out.print("<div>" + post + "</div>"); 
		}
	%>
	</div>
	
	<div>
		<form action="./board">
			<input type="text" name="content"/>
			<input type="submit" value="입력" />
		</form>
	</div>
</body>
</html>