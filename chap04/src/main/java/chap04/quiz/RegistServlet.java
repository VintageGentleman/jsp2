package chap04.quiz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.regex.Pattern;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/quiz/registServlet")
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 3053623413793002729L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletContext application = getServletContext();
		
		String regex = "\\w+";
		
		String id = req.getParameter("ID");
		String pw = req.getParameter("PW");
		
		if(!Pattern.matches(regex, id) || !Pattern.matches(regex, pw)) {
			resp.sendRedirect("/chap04/quiz/failed.jsp");
			return;
		}
		
		Enumeration<String> names = application.getAttributeNames();
		
		boolean isUsed = false;
		// session.Attribute의 모든 name과 value를 출력 
		while(names.hasMoreElements()) {
			String name = names.nextElement();
			if(id.equals(name)) {
				isUsed = true; 
			}
		} 
		
		if(!isUsed) {
			application.setAttribute(id, pw);
			ArrayList<String> posts = new ArrayList<>();
			
			@SuppressWarnings("unchecked")
			HashMap<String, ArrayList<String>> map = (HashMap<String, ArrayList<String>>) application.getAttribute("board");
			
			map.put(id, posts);
		}
		
		if(isUsed) {
			resp.sendRedirect("/chap04/quiz/failed.jsp");
		} else {
			resp.sendRedirect("/chap04/quiz/confirm.jsp");
		}
	}

}
