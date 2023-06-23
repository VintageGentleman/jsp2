<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="chap08.model.Student"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// �� �����ͺ��̽����� �����͸� ���� �� ������ �Ǿ��ٰ� ����
	Student s = new Student();
	
	request.setAttribute("stu1", s);
	
	s.setName("��ö��");
	s.setAge(20);
	s.setKor(80);
	s.setEng(78);
	s.setMath(50);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>EL</title>
</head>
<body>

	<h3>#JSP Expression Language (EL)</h3>
	
	<ul>
		<li>JSP�� Ư�� ���� ���ĺ��� �߰��� �⺻ ���</li>
		<li>��Ʈ����Ʈ�� �Ƿ��ִ� ���� ���� ���� �� �� �ִ� ���</li>
		<li>������ �ڹ� �޼����� ȣ���� ���������� ��� �޼��带 �ڹ�ó�� �����Ӱ� �� �� �ִ� ���� �ƴϴ�</li>
		<li>�ڹٽ�ũ��Ʈ�� format string�� �Ȱ��� ���ܼ� jsp���� �������� JS format string�� ����� �� ����</li>
	</ul>
	
	<c:set var="book" value="�ظ����Ϳ� ���� ��" scope="application" />
	<c:set var="book" value="�ظ����Ϳ� ����ī���� �˼�" scope="session" />
	<c:set var="book" value="�ظ����Ϳ� ����� ��" scope="request" />
	<c:set var="book" value="�ظ����Ϳ� �������� ��" scope="page" />
	
	<h3># EL�� �� ������ ��Ʈ����Ʈ ����ϱ�</h3>
	
	<ul>
		<li>�׳� : ${book }</li>
		<li>page : ${pageScope.book }</li>
		<li>request : ${requestScope.book }</li>
		<li>session : ${sessionScope.book }</li>
		<li>application : ${applicationScope.book }</li>
	</ul>
	
	<h3># EL�� ��Ʈ����Ʈ�� ��� �ִ� Model Ŭ���� Ȱ���ϱ�</h3>
	
	<ul>
		<li>��ü�� �׳� ��� (�ش� ��ü�� toString() ȣ��) : ${stu1 }</li>
		<li>��ü�� .�� ��� �Ӽ����� ȣ���ϸ� �����δ� �ش� �Ӽ��� getter�� ȣ���Ͽ� ����Ѵ�</li>
		<li>�ش� �Ӽ��� getter�� �����Ǿ� ���������� ������ �߻��Ѵ�</li>
		<li>name : ${stu1.name }</li>
		<li>age : ${stu1.age }</li>
		<li>kor : ${stu1.kor }</li>
		<li>eng : ${stu1.eng }</li>
		<li>math : ${stu1.math }</li>
	</ul>
	
	<h3># EL�� ���ͷ�</h3>

	<c:set var="premium" value="true" />
	
	<ul>
		<li>���� : ${12345}, ${133 * 123}, ${123 + 123} </li>
		<li>�Ǽ� : ${123.1234 * 3}</li>
		<li>���ڿ� : ${'hello!' }, ${"hello~" }</li>
		<li>boolean : ${true }, ${false }, ${not premium }</li>
	</ul>
	
	<h3># EL�� ������</h3>
	
	<c:set var="a" value="30" />
	<c:set var="b" value="17" />
	<c:set var="fruit" value="blueberry" />
	
	<dl>
		<dt>���: +, -, *, /, %, mod</dt>
		<dd>ex : ${10 % 7}, ${10 mod 7}, ${a mod b} </dd>
		<dt>��: ==, !=, eq(equal), ne(not equal), lt(less than),
			 gt(greater than), le(less than equal), ge(greater than equal)</dt>
		<dd>ex: ${a eq b }, ${a == b }, ${a > b }, ${a gt b },
			 ${fruit == 'blueberry' }, ${fruit != 'strawberry' }</dd>
		<dt>��: and, or, not, &amp;&amp;, ||, ! </dt>
		<dd>${fruit == 'blueberry' and a mod 2 == 0}</dd>
		<dt>empty : �ش� ���� null �Ǵ� ""�� �� true</dt>
		<dd>${empty fruit}</dd>
		<dt>���� ������</dt>
		<dd>��� �ٱ��� ���� : ${a % 10 == 0 ? a / 10 : a / 10 + 1} </dd>
	</dl>
	
</body>
</html>