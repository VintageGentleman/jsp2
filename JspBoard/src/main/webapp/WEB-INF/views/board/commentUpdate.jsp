<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>댓글 수정</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/commentUpdate.css">
</head>
<body>
	<form action="./commentUpdate" method="POST">
		<div class="com-item">
			<div>${comment.com_writer}</div>
			<div>
				<input type="text" name="com_content" value="${comment.com_content}" />
			</div>
			<div>
				<button type="submit">수정</button>
			</div>
		</div>
		<input type="hidden" name="post_id" value="${comment.post_id}">
		<input type="hidden" name="com_id" value="${comment.com_id}">
	</form>
</body>
</html>