package jspboard.process;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.Cookie;
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
		
		if(post == null) {
			return "/error/postContent_null";
		}

		Cookie[] cookies = request.getCookies();
		
		boolean check10min = false;
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("post_id-" + post.getPost_id())) check10min = true ;
		}
		
		if(!check10min) {
			post.setView_count(post.getView_count() + 1);
			
			dao.updateView_count(post);
			
			Cookie cookie = new Cookie("post_id-" + post.getPost_id(), "1");
			cookie.setMaxAge(600);
			response.addCookie(cookie);
		}
			
		request.setAttribute("post", post);
		request.setAttribute("commentList", commentList);
		return "/board/postContent";
		
	}

}
