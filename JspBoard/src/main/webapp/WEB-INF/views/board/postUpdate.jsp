<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>글 내용 수정</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/postUpdate.css">
</head>
<body>
	<form id="post_form" action="./postUpdate" method="POST">
		<input type="hidden" name="post_id" value="${post.post_id}">
	</form>
	<div id="main">
		<div>
			<span>글쓴이:</span><br>
			<input id="writer" type="text" name="post_writer" value="${post.post_writer}" form="post_form" readonly />
		</div>
		<div>
			<span>제목:</span><br>
			<input type="text" name="post_title" value="${post.post_title}" form="post_form" />
		</div>
		<div>
			<span>내용:</span><br>
			<input id="content" type="text" name="post_content" value="${post.post_content}" form="post_form" />
		</div>
		<div>
			<button class="btn" type="submit" form="post_form">수정하기</button>
		</div>
		<div>
			<button class="btn" onclick="moveHome()">목록으로</button>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/assets/js/BasicFunction.js"></script>
</body>
</html>