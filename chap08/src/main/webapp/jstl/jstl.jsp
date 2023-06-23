<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="chap08.model.Food" %>
<% 
	// �� ����Ͻ� ������ ���� �����ͺ��̽����� ��ȸ�� �����Ͷ�� ����
	request.setAttribute("animals", new String[]{"������", "�����", "������", "ȣ����", "����", "�糪��", "����"});

	java.util.List<Food> food_list = new java.util.ArrayList<>();
	request.setAttribute("food_list", food_list);
	
	java.util.Collections.addAll(food_list,
			new Food("kb", "�н�", "���"),
			new Food("dbk", "�н�", "������"),
			new Food("sd", "�н�", "����")
	);
	
	request.setAttribute("colors", "red/orange/green/purple/skyblue/tomato");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>JSTL</title>
</head>
<body>
	<h3># JSTL (JSP Standard Tag Library)</h3>
	
	<ul>
		<li>JSP���� �ڹ� �����͸� ����ϱ⿡ �ڵ尡 �ʹ� ������������ ������
			Ŀ���� �±� ���̺귯��</li>
		<li>�ַ� �� �ʿ��� ���� ���̴� ��ɵ��� html �±׿� ������ ��������
			����� �� �ְ� ����� �ξ���</li>
		<li>�ڹ��� ��� ����� ����� �� �ִ� ���� �ƴ����� 
			�� �������� ����⿡�� ����� ��ɵ��� �±׷� �����Ǿ� �ִ�</li>
		<li>JSTL�� �±� ���̺귯���̹Ƿ� Ŀ���� �±� ���̺귯���� import�ϴ� ������
			�ش� ������ �� ���� �߰��ؾ� ����� �� �ִ�</li>
		<li>�پ��� ���̺귯�� �ٿ�޴� �� : ���ۿ� maven repository �˻�</li>
	</ul>
	
	<h3># JSTL core</h3>
	
	<dl>
		<dt>&lt;c:set&gt;</dt>
		<dd>setAttribute�� ���ϰ� ����� �� �ִ� �±�</dd>
		<dt>&lt;c:if&gt;</dt>
		<dd>�±� �������� if���� ������ �� �ִ�. else if�� else�� ����</dd>
		<dt>&lt;c:choose&gt;, &lt;c:when&gt;, &lt;c:otherwise&gt;</dt>
		<dd>if, else if, elseó�� ����� �� �ִ� �±�</dd>
		<dt>&lt;c:forEach&gt;</dt>
		<dd>���ڸ� �̿��� �ݺ����� ���������� ������ �ݺ���(iterable)�� ��� ����� �� �ִ�</dd>
		<dt>&lt;c:forTokens&gt;</dt>
		<dd>������ ���ڿ��� split�� ����� �ݺ����� �����ϴ� ����</dd>
		<dt>&lt;c:url&gt;</dt>
		<dd>�˾Ƽ� url�� contextPath�� �߰����ִ� �±�
			������ url�� ��Ʈ����Ʈ�� �߰��Ͽ� ����ó�� ����� ���� �ְ�, �ٷ� ����� ���� �ִ�</dd>
	</dl>

	<h3># varStatus : JSTL �ݺ����� ������ ����ִ� ��ü</h3>
	
	<ul>
		<li>varStatus.index : ���� �ε����� �� �� �ִ�(0���� ����)</li>
		<li>varStatus.count : ������ ������ �� �� �ִ�(1���� ����)</li>
		<li>varStatus.first : ������ ù ��° �ݺ��̶�� true</li>
		<li>varStatus.last : ������ ������ �ݺ��̶�� true</li>
		<li>varStatus.begin : ���� ��</li>
		<li>varStatus.end : ������ ��</li>
		<li>varStatus.step : ���� ��</li>
		<li>varStatus.current : ���� ��</li>
	</ul>
	
	<hr>
	
	<%
		// �� ������ ���� �̸��� attribute���� �̸��� ������ ��
		// ���� ����� ������ ���� ������ ����Ѵ�
		application.setAttribute("fruit", "����");
		session.setAttribute("fruit", "���");
		request.setAttribute("fruit", "������");
		pageContext.setAttribute("fruit", "����");
	%>
	
	<p>fruit ��Ʈ����Ʈ1 : ${fruit }</p>
	
	<c:set var="fruit" value="����"  scope="application" />
	<c:set var="fruit" value="������" scope="session" />
	<c:set var="fruit" value="Ű��"  scope="request" />
	<c:set var="fruit" value="����"  scope="page" />
	
	<p>fruit ��Ʈ����Ʈ2 : ${fruit }</p>
	
	<c:if test="${sessionScope.fruit == '������'}">
		<h3>session�� fruit�� �������Դϴ�!</h3>
	</c:if>
	
	<c:if test="${requestScope.fruit == '������'}">
		<h3>request�� fruit�� �������Դϴ�!</h3>
	</c:if>
	
	<c:set var="score" value="99" />
	
	<c:choose>
		<c:when test="${score gt 100 or core lt 0}">
			<c:set var="grade" value="F" />
		</c:when>
		<c:when test="${score ge 90}">
			<c:set var="grade" value="A" />
		</c:when>
		<c:when test="${score ge 80}">
			<c:set var="grade" value="B" />
		</c:when>
		<c:when test="${score ge 70}">
			<c:set var="grade" value="C" />
		</c:when>
		<c:when test="${score ge 60}">
			<c:set var="grade" value="D" />
		</c:when>
		<c:otherwise>
			<c:set var="grade" value="F" />
		</c:otherwise>
	</c:choose>
	
	<h3>������ ${score} ����� ${grade}</h3>
	
	<h3>1. ���ڷ� �ݺ��� ������</h3>
	
	<ul>
		<li>�ڹٿ� �ٸ��� begin�� end�� ��� �����Ͽ� �ݺ��ϹǷ� �����ؾ� �Ѵ� <br>
			(begin�� 0���� end�� 10���� �����ϸ� 11�� �ݺ��Ѵ�)</li>
		<c:forEach begin="1" end="10" var="i" step="1">
			<li class="item${i}">list-item${i}</li>
		</c:forEach>
	</ul>
	
	<h3>2. Iterable�� ������ ��ü �ݺ��ϱ�</h3>
	
	<h5>(1) �迭 �ݺ��ϱ�</h5>
	<c:forEach items="${animals}" var="animal">
		<div id="${animal}">${animal}</div>
	</c:forEach>
	
	<h5>(2) ����Ʈ �ݺ��ϱ�</h5>
	<c:forEach items="${food_list}" var="food">
		<div id="${food.food_id}" class="${food.food_type}">${food.display_name}</div>
	</c:forEach>
	
	<h3>3. varStatus Ȯ���غ���</h3>
	<c:forEach begin="50" end="80" step="2" var="i" varStatus="status">
		<c:choose>
			<c:when test="${status.first}">
				<div style="border: solid 3px red; margin-bottom:10px;">
					<div>current: ${status.current}</div>
					<div>index: ${status.index}</div>
					<div>count: ${status.count}</div>
					<div>first: ${status.first}</div>
					<div>last: ${status.last}</div>
				</div>
			</c:when>
			<c:when test="${status.last}">
				<div style="border: solid 3px gold; margin-bottom:10px;">
					<div>current: ${status.current}</div>
					<div>index: ${status.index}</div>
					<div>count: ${status.count}</div>
					<div>first: ${status.first}</div>
					<div>last: ${status.last}</div>
				</div>
			</c:when>
			<c:otherwise>
				<div style="border: solid 3px black; margin-bottom:10px;">
					<div>current: ${status.current}</div>
					<div>index: ${status.index}</div>
					<div>count: ${status.count}</div>
					<div>first: ${status.first}</div>
					<div>last: ${status.last}</div>
				</div>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<h3># forTokens</h3>
	
	<c:forTokens items="${colors}" delims="/" var="color">
		<div style="border: solid ${color} 3px; color: ${color}">${color}</div>
	</c:forTokens>
	
	<h3># c:url</h3>
	<c:url value="/pizza/order/result" var="url1"/>
	<c:url value="/pizza/order/result" var="url2">
		<c:param name="customer_id" value="123"/>
		<c:param name="pizza_id" value="8"/>
	</c:url>
	
	<c:url value="../detail" var="url3">
		<c:param name="event_id" value="13"/>
	</c:url>
	
	<ul>
		<li><c:url value="/pizza/order/result"/></li>
		<li><a href="${url1}">��ũ~</a></li>
		<li>GET ��� �Ķ���� �߰��� url: ${url2}</li>
		<li>����ο��� contextPath�� �߰����� �ʴ´�: ${url3}</li>
	</ul>
</body>
</html>