package chap04.quiz_a;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/quiz_A/memo/add")
public class MemoAddServlet extends HttpServlet {
	private static final long serialVersionUID = -4689491111007875148L;

	public static Map<MemoUser, List<String>> memos = new HashMap<>();
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		MemoUser user = (MemoUser)session.getAttribute("user");
		String memo = request.getParameter("memo");
		
		if(!memos.containsKey(user)) {
			List<String> newMemos = new ArrayList<>();
			newMemos.add(memo);
			memos.put(user, newMemos);
		} else {
			memos.get(user).add(memo);
		}
		
		response.sendRedirect("../index.jsp");
	}
}
