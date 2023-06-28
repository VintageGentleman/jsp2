<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<div id="post_list">
	<div class="listItem">
		<div>��ȣ</div>
		<div>����</div>
		<div>�۾���</div>
		<div>��ȸ��</div>
	</div>
	<c:forEach items="${postList}" var="post">
		<div class="listItem">
			<div>
				${post.post_id}
			</div>
			<div>
				<a href="./postDetail?post_id=${post.post_id}">${post.post_title}</a>
			</div>
			<div>
				${post.post_writer}
			</div>
			<div>
				${post.view_count}
			</div>
		</div>
	</c:forEach>
</div>