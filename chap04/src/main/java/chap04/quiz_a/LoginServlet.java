package chap04.quiz_a;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/quiz_A/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = -59799822861097349L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		
		if(user_id != null && user_pwd != null && !user_id.trim().equals("") && !user_pwd.trim().equals("")) {
			// 등록된 모든 유저를 하나씩 반복하면서
			for(MemoUser user : RegisterServlet.memo_users) {
				// 아이디와 비밀번호가 같은지 체크한다
				if(user.getUser_id().equals(user_id) && user.getUser_pwd().equals(user_pwd)) {
					// 로그인 성공!
					request.getSession().setAttribute("user", user);
					response.sendRedirect("./index.jsp");
					return;
				}
			}
		} 
		
		// 로그인 실패 
		// 포워드하는 대신 사용할 수 있는 방법
		response.getWriter().append("<html><head></head><body>"
				+ "<script>"
				+ 	"alert('login failed!');"
				+ 	"history.back();"
				+ "</script>"
				+ "</body></html>");
		
		// 경고창을 띄워주는 JSP로 이동시킴
//		request.getRequestDispatcher("./login_failed.jsp").forward(request, response);
	}
}
