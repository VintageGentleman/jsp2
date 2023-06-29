<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<p id="list-p">댓글목록</p>
<div id="comment-list">
	<c:forEach items="${commentList}" var="com">
		<div class="com-item">
			<div>${com.com_writer}</div>
			<div>${com.com_content}</div>
			<div>
				<form id="com_update_form" action="./commentUpdateChk" method="POST">
					<button class="btn" type="submit">수정</button>
					<input type="hidden" name="com_id" value="${com.com_id}"/>
					<input type="hidden" name="post_id" value="${post.post_id}"/>
				</form>
				<form action="./commentDelete" method="POST">
					<button class="btn" type="submit">삭제</button>
					<input type="hidden" name="com_id" value="${com.com_id}"/>
					<input type="hidden" name="post_id" value="${post.post_id}"/>
				</form>
			</div>
		</div>
	</c:forEach>
</div>