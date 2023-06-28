<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>글쓰기</title>
</head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/postWrite.css">
<body>
	<form id="post_form" action="./postWrite" method="POST"></form>
	<div id="main">
		<div>
			<span>글쓴이:</span><br>
			<input type="text" name="post_writer" form="post_form"/>
		</div>
		<div>
			<span>비밀번호:</span><br>
			<input type="password" name="post_password" form="post_form" />
		</div>
		<div>
			<span>제목:</span><br>
			<input type="text" name="post_title" form="post_form" />
		</div>
		<div>
			<span>내용:</span><br>
			<textarea name="post_content" id="content" form="post_form"></textarea>
		</div>
		<div>
			<button class="btn" type="submit" form="post_form">글쓰기</button>
		</div>
		<div>
			<button class="btn" onclick="moveHome()">돌아가기</button>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/assets/js/BasicFunction.js"></script>
</body>
</html>