package jspboard.process;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.PostDAO;
import jspboard.function.Paging;
import jspboard.model.Post;

public class BoardHomeBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		PostDAO dao = new PostDAO();
		
		List<Post> postList;
		
		Paging paging = new Paging();
		
		request.setAttribute("paging", paging);
		
		if(request.getParameter("page") == null) {
			postList = dao.selectPostList(1);
			
			paging.setCurrPage(1);
			
			request.setAttribute("postList", postList);
			
			request.setAttribute("pageList", paging.getPageList());
			
			return "/board/index";
		}

		try {
			int pageNum = Integer.parseInt(request.getParameter("page"));

			if(pageNum < 0 || pageNum > paging.getLastPage()) return "/error/non_existent_page";
			
			paging.setCurrPage(pageNum);
			
			postList = dao.selectPostList(pageNum);
			
			request.setAttribute("postList", postList);
			
		} catch (NumberFormatException e) {
			return "/error/non_existent_page";
		}

		request.setAttribute("pageList", paging.getPageList());
		
		return "/board/index";
	}

}
