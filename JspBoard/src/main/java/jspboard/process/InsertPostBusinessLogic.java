package jspboard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.PostDAO;
import jspboard.model.Post;

public class InsertPostBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String contextPath = request.getContextPath();
		
		Post post = new Post();
		
		post.setPost_writer(request.getParameter("post_writer"));
		post.setPost_password(request.getParameter("post_password"));
		post.setPost_title(request.getParameter("post_title"));
		post.setPost_content(request.getParameter("post_content"));
		
		PostDAO dao = new PostDAO();
		
		int result = dao.insertPost(post);
		
		if(result == 1) {
			return "redirect:" + contextPath + "/home";
		} else {
			return "redirect:" + contextPath + "/postWrite";
		}
	}

}
