<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>�۾���</title>
</head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/postWrite.css">
<body>
	<form id="post_form" action="./postWrite" method="POST"></form>
	<div id="main">
		<div>
			<span>�۾���:</span><br>
			<input type="text" name="post_writer" form="post_form"/>
		</div>
		<div>
			<span>��й�ȣ:</span><br>
			<input type="password" name="post_password" form="post_form" />
		</div>
		<div>
			<span>����:</span><br>
			<input type="text" name="post_title" form="post_form" />
		</div>
		<div>
			<span>����:</span><br>
			<textarea name="post_content" id="content" form="post_form"></textarea>
		</div>
		<div>
			<button class="btn" type="submit" form="post_form">�۾���</button>
		</div>
		<div>
			<button class="btn" onclick="moveHome()">���ư���</button>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/assets/js/BasicFunction.js"></script>
</body>
</html>