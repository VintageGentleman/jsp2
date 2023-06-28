package jspboard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.CommentDAO;
import jspboard.model.Comment;

public class UpdateCommentBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String contextPath = request.getContextPath();
		
		Comment com = new Comment();
		
		com.setCom_id(Integer.parseInt(request.getParameter("com_id")));
		com.setCom_content(request.getParameter("com_content"));
		
		CommentDAO dao = new CommentDAO();
		
		dao.updatePost(com);
		
		return "redirect:" + contextPath + "/postDetail?post_id=" + request.getParameter("post_id");
	}

}
