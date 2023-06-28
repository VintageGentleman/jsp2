<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<p id="list-p">��۸��</p>
<div id="comment-list">
	<c:forEach items="${commentList}" var="com">
		<div class="com-item">
			<div>${com.com_writer}</div>
			<div>${com.com_content}</div>
			<div>
				<form id="com_update_form" action="./commentUpdate" method="POST">
					<button type="submit" form="com_update_form">����</button>
					<input form="com_update_form" type="hidden" name="com_id" value="${com.com_id}"/>
				</form>
				<form action="./commentDelete" method="POST">
					<button type="submit">����</button>
					<input type="hidden" name="com_id" value="${com.com_id}"/>
				</form>
			</div>
		</div>
	</c:forEach>
</div>