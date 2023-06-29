<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/assets/css" var="css"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>����Ʈ</title>
	<link rel="stylesheet" href="${css}/font.css">
	<link rel="stylesheet" href="${css}/postContent.css">
</head>
<body>
	<form id="updateForm" action="./postUpdateChk" method="POST">
		<input type="hidden" name="post_id" value="${post.post_id}">
	</form>
	<form id="deleteForm" action="./postDelete" method="POST">
		<input type="hidden" name="post_id" value="${post.post_id}">
	</form>
	<div id="main">
		<div id="option">
			<div></div>
			<div></div>
			<div><button class="btn btn-header" onclick="moveHome()">���</button></div>
			<div><button class="btn btn-header" type="submit" form="updateForm">����</button></div>
			<div><button class="btn btn-header" type="submit" form="deleteForm">����</button></div>
		</div>
		<div id="header">
			<div>
				${post.post_id}
			</div>
			<div>
				${post.post_title}
			</div>
			<div>
				${post.post_writer}
			</div>
			<div>
				${post.post_time}
			</div>
			<div>
				��ȸ�� : ${post.view_count}
			</div>
		</div>
		<div>
			${post.post_content}
		</div>
		<div id="comment">
			<jsp:include page="./list/comment_list.jsp"/>
			<div id="comment-insert">
				<div>
					<input name="com_writer" class="com-text" placeholder="���̵��Է�" form="commentWrite" type="text" required/>
				</div>
				<div>
					<textarea name="com_content" id="com-content" placeholder="����Է�" form="commentWrite" required></textarea>
				</div>
				<div>
					<input name="com_password" class="com-text" placeholder="��й�ȣ�Է�" form="commentWrite" type="password" required/>
				</div>
				<div></div>
				<div>
					<button class="btn btn-header" form="commentWrite" type="submit">���</button>
				</div>
			</div>
		</div>	
	</div>
	<form id="commentWrite" action="./commentWrite" method="POST">
		<input type="hidden" name="post_id" value="${post.post_id}">	
	</form>
	<script src="<%=request.getContextPath()%>/assets/js/BasicFunction.js"></script>
</body>
</html>