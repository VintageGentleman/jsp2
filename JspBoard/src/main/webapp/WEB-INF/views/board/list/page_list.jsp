<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="nextPage" value="${paging.currPage + 1}" scope="page" />
<c:set var="prePage" value="${paging.currPage - 1}" scope="page" />
<div id="pageDiv">
	<c:choose>
		<c:when test="${prePage >= paging.firstPage}">
			<button onclick="location.href='./home?page=${prePage}'">&lt;</button> 
		</c:when>
		<c:otherwise>
			<button disabled>&lt;</button> 
		</c:otherwise>
	</c:choose>		
	<c:forEach items="${paging.pageList}" var="pageNum">
		<button onclick="location.href='./home?page=${pageNum}'">${pageNum}</button>
	</c:forEach>
	<c:choose>
		<c:when test="${nextPage <= paging.lastPage}">
			<button onclick="location.href='./home?page=${nextPage}'">&gt;</button>
		</c:when>
		<c:otherwise>
			<button disabled>&gt;</button> 
		</c:otherwise>
	</c:choose>
</div>