package jspboard.process;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.CommentDAO;
import jspboard.dao.PostDAO;
import jspboard.model.Comment;
import jspboard.model.Post;

public class PostDetailBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PostDAO dao = new PostDAO();
		CommentDAO dao2 = new CommentDAO(); 
		
		int post_id = Integer.parseInt(request.getParameter("post_id"));
		
		Post post = dao.selectPostDetail(post_id);
		List<Comment> commentList = dao2.selectCommentList(post_id); 
		
		if(post != null) {
			request.setAttribute("post", post);
			request.setAttribute("commentList", commentList);
			return "/board/postContent";
		}
		
		return "/board/postContent_null";
	}

}
