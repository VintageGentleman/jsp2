package chap04.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/quiz/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 7948165077163791359L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("ID");
		String pw = req.getParameter("PW");
		
		ServletContext application = getServletContext();

		String user_id = (String) application.getAttribute(id);
		
		boolean isValid = false;
		if(user_id != null) {
			isValid = pw.equals(user_id);
		}
		
		HttpSession session = req.getSession();
		
		if(isValid) {
			session.setAttribute("ID", id);
			resp.sendRedirect("/chap04/quiz/mainMenu.jsp");
			return;
		}
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		out.println("<script>"
				+ "alert('아이디 또는 비밀번호를 잘못 입력했습니다.');"
				+ "location.href = '/chap04/quiz/index.jsp';"
				+ "</script>"); 
		out.close();
	}

}
