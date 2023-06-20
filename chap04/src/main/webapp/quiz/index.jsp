<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Quiz</title>
	<link rel="stylesheet" href="./css/index.css">
</head>
<body>
	
	<%
		if(application.getAttribute("board") == null) {
			HashMap<String, ArrayList<String>> users = new HashMap<>();
			application.setAttribute("board", users);
		}
	%>
	
	<h3># Quiz의 요구사항</h3>
	
	<ul>
		<li>아이디와 비밀번호를 입력하면 로그인을 할 수 있다</li>
		<li>회원가입은 아이디와 비밀번호만 입력하면 완료된다 (아이디 중복은 체크해야 함) </li>
		<li>로그인에 성공하고 나면 세션이 유지되는 동안 로그인이 유지되어야 한다</li>
		<li>로그인한 사람은 새로운 메모를 등록할 수 있고, 예전에 등록했던 메모들도 볼 수 있다</li> 
		<li>서버를 종료했을 때 모든 회원이 사라져도 상관 없다</li>
		<li>페이지 개수는 제한은 없고 모든 내용은 퀴즈 폴더 밑에 만들어 둘 것
			(서블릿은 quiz 패키지에 둘 것)</li>
	</ul>
	
	<hr>
	
	<h3>Quiz</h3>
	
	<% if(session.getAttribute("ID") == null) { %>
		<div id="loginDiv">
			<form action="./login" id="form" method="POST"></form>
			<div id="quiz" class="layoutDiv">
				<div id="login">
					<input form="form" type="text" name="ID" placeholder="아이디 입력" autocomplete="off" />
					<input form="form" type="password" name="PW" placeholder="비밀번호 입력" />
				</div>
				<div></div>
				<input id="loginBtn" class="btn" form="form" type="submit" value="로그인">
				<button id="regist" class="btn" onclick="regist()">회원가입</button>
			</div>
		</div>
	<% } else { %>
		<div id="basicDiv" class="layoutDiv">
			<div>환영합니다 <br>'<%=session.getAttribute("ID")%>'님</div>
			<button onclick="toMain()" class="btn">메모보기</button>
			<button onclick="logout()" class="btn">로그아웃</button>
		</div>
	<% } %>
	
	<script src="./function.js"></script>
</body>
</html>