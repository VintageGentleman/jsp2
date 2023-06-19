<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<title>Forwarding</title>
</head>
<body>

	<h3># Forward</h3>
	
	<ul>
		<li>사용자가 보낸 요청을 해당 서블릿에서 처리하다가
			요청 정보를 다른 서블릿으로 넘겨 이어받아 처리하게 하는 것</li>
		<li>사용자가 보낸 요청 객체를 그대로 다음 서블릿으로 전달하기 때문에
			요청에 실려있던 파라미터들도 그대로 함께 전달된다</li>
		<li>이 포워드를 이용하여 자바 코드가 많이 사용되는 처리
			(controller, service)는 서블릿에서 진행하고,
			html코드가 많이 사용되는 처리(view)는 JSP에서 이어서 진행할 수 있다</li>
	</ul>
	
	<h3># Redirect</h3>
	
	<ul>
		<li>요청 보낸 클라이언트가 다른 주소로 다시 요청하라고 응답하는 것</li>
		<li>리다이렉트 응답을 받은 클라이언트(웹 브라우저)에서는 새로운 요청을
			만들어 보내기 때문에 이전 요청에 보냈던 파라미터는 기본적으로 남아있을 수 없다</li>
		<li></li>
	</ul>
	
	<form id="form1" action="/chap03/forwardtest" method="POST"></form>
		
	<input form="form1" type="text" name="type" value="drink" />
	<input form="form1" type="text" name="name" value="Americano" />
	<input form="form1" type="text" name="price" value="7000" />
	<input form="form1" type="text" name="qty" value="5" />
	<input form="form1" type="submit" value="보내기" />
	
</body>
</html>