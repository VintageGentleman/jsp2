package jspboard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.PostDAO;
import jspboard.model.Post;

public class UpdateChkPostBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String pwd = request.getParameter("pwd");
		int post_id = Integer.parseInt(request.getParameter("post_id")); 
		
		if(pwd == null || pwd.equals("")) {
			return "/board/postUpdate_chk";
		}
		
		PostDAO dao = new PostDAO();
		
		if(pwd.equals(dao.getPassword(post_id))) {
			Post post = dao.selectPostDetail(post_id);
			
			request.setAttribute("post", post);
			
			return "/board/postUpdate";
		} else {
			return "/board/postUpdate_chk";
		}
	}

}
