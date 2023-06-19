package chap04.quiz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("./quiz/BoardServlet")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = -4686684145261559772L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		String id = (String) session.getAttribute("ID");
		
		ServletContext application = getServletContext();
		
		HashMap<String, ArrayList<String>> board = (HashMap<String, ArrayList<String>>) application.getAttribute("board");
		ArrayList<String> posts = board.get(id);
		
		posts.add(req.getParameter("content"));

		application.setAttribute("board", board);
	
		resp.sendRedirect("/chap04/quiz/mainMenu.jsp");
	}
}
