<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>포스트</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/postContent.css">
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
			<div><button class="btn" onclick="moveHome()">목록</button></div>
			<div><button class="btn" type="submit" form="updateForm">수정</button></div>
			<div><button class="btn" type="submit" form="deleteForm">삭제</button></div>
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
				조회수 : ${post.view_count}
			</div>
		</div>
		<div>
			${post.post_content}
		</div>
		<div id="comment">
			<jsp:include page="./list/comment_list.jsp"/>
			<div id="comment-insert">
				<div>
					<input name="com_writer" class="com-text" placeholder="아이디입력" form="commentWrite" type="text" required/>
				</div>
				<div>
					<textarea name="com_content" id="com-content" placeholder="댓글입력" form="commentWrite" required></textarea>
				</div>
				<div>
					<input name="com_password" class="com-text" placeholder="비밀번호입력" form="commentWrite" type="password" required/>
				</div>
				<div></div>
				<div>
					<button class="btn" form="commentWrite" type="submit">등록</button>
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