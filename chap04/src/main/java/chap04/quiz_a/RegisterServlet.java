package chap04.quiz_a;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/quiz_A/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 8191459573769520726L;
	
	public static List<MemoUser> memo_users = new ArrayList<>();
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		
		MemoUser n_user = new MemoUser(user_id, user_pwd);
		
		if(memo_users.contains(n_user)) {
			// 중복된 아이디 페이지로 포워딩
			request.getRequestDispatcher("/quiz_A/exist_id.jsp").forward(request, response);
		} else {
			// 회원가입 성공
			memo_users.add(n_user);
			response.sendRedirect("./index.jsp");
		}
	}

}
