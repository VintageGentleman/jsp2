package chap05.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/encoding_test/servlet")
public class EncodingTestServlet extends HttpServlet {
	private static final long serialVersionUID = 5004162453770684491L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("한글 잘 나오나?" + request.getParameter("taste"));
		response.sendRedirect("../encoding.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		System.out.println("가격은? " + request.getParameter("price"));
		response.sendRedirect("../encoding.jsp");
	}
}
