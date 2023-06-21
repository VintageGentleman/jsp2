<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	@SuppressWarnings("unchecked")
	List<String> paths = (List<String>)request.getAttribute("img_paths");
	String contextPath = request.getContextPath();
    String ip = request.getHeader("X-Forwarded-For");
    if (ip == null) ip = request.getRemoteAddr();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>������</title>
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/gallery.css">
</head>
<body>
	<h5>/chap06/gallery/index�� �̰��� �����ϰ� ������</h5>

	<h3># �������Դϴ�.</h3>

	<div class="header" id="myHeader">
	  <h1>Image Grid</h1>
	  <p>Welcome to my gallery</p>
	  <p id="ip">Sir "<%=ip %>"</p>
	  <p>Click on the buttons to change the grid view.</p>
	  <button class="btn" onclick="one()">1</button>
	  <button class="btn active" onclick="two()">2</button>
	  <button class="btn" onclick="four()">4</button>
	</div>

	<%int num = 1; %>
	<div class="row">
		<%for(int i = 0; i < 4; i++) {
			Collections.shuffle(paths);%>	
			<div class="column">
			<%for(String path : paths) { %>
				<img src="<%=path %>" alt="picture<%=num++ %>">
			<%} %>
			</div>
		<%} %>
	</div>
	
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	
	<script src="<%=contextPath %>/resources/js/gallery.js"></script>
</body>
</html>	