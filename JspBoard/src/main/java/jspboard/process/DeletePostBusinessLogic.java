package jspboard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.PostDAO;

public class DeletePostBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String pwd = request.getParameter("pwd");
		int post_id = Integer.parseInt(request.getParameter("post_id")); 
		
		if(pwd == null || pwd.equals("")) {
			return "/board/postDelete_chk";
		}
		
		PostDAO dao = new PostDAO();
		
		if(pwd.equals(dao.getPassword(post_id))) {
			dao.deletePost(post_id);
			return "redirect:" + request.getContextPath() + "/home";
		} else {
			return "/board/postDelete_chk";
		}
	}

}
