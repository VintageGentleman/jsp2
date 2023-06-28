package jspboard.process;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.PostDAO;
import jspboard.model.Post;

public class BoardHomeBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PostDAO dao = new PostDAO();
		
		List<Post> postList = dao.selectPostList();
		
		request.setAttribute("postList", postList);
		
		return "/board/index";
	}

}
