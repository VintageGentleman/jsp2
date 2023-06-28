package jspboard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.CommentDAO;
import jspboard.model.Comment;

public class InsertCommentBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String contextPath = request.getContextPath();
		int post_id = Integer.parseInt(request.getParameter("post_id"));
		
		Comment com = new Comment();
		
		com.setCom_content(request.getParameter("com_content"));
		com.setCom_writer(request.getParameter("com_writer"));
		com.setCom_password(request.getParameter("com_password"));
		com.setPost_id(post_id);
		
		CommentDAO dao = new CommentDAO();
		
		dao.insertComment(com);
		
		return "redirect:" + contextPath + "/postDetail?post_id=" + post_id;
	}

}
