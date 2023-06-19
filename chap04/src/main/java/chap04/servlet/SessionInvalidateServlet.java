package chap04.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/session/invalidate")
public class SessionInvalidateServlet extends HttpServlet {
	private static final long serialVersionUID = -1674527403043320533L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 세션 만료시키기
		req.getSession().invalidate();
		resp.sendRedirect("./index.jsp");
	}
}
