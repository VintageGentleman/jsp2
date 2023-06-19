<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// html �κ� �� ����� ����ϸ� jsp�� ����ó�� Ȱ���� ���� �ִ� (������)
	
	// page scope : ���� �������� �Ѿ�� ����, ���� ������ ���� ����
	pageContext.setAttribute("flavor", "strawberry");
	// request scope : ������ �ϰ��� ����, �ϳ��� ��û�� ó���Ǳ� ������ ����
	request.setAttribute("flavor", "kiwi");		
	// session scope : ������ ����Ǹ� �Բ� �������, ���� �����ڸ�ŭ ����
	session.setAttribute("flavor", "orange");
	// application scope : ������ ���� �ִ� ������ ��� �����ȴ�
	application.setAttribute("flavor", "banana");
	
	// RequestDispatcher ���� �� �ʿ��� ��δ� webapp ���� ���
	request.getRequestDispatcher("/attribute_scope/view.jsp").forward(request, response);
%>