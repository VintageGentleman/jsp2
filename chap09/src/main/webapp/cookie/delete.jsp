<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String cookie_name = request.getParameter("name");

	// ��Ű�� ������ 0���� �����ϸ� ��Ű�� �����ȴ�
	// ��Ű�� �ϳ��� ������ �޼��尡 �������� �ʾƼ� ���ŷӴ�
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals(cookie_name)) {
				cookie.setMaxAge(0); // ��Ű ������ 0���� �����Ͽ� ����
				response.addCookie(cookie);
			}
		}
	}
	
	response.sendRedirect("./list.jsp");
%>