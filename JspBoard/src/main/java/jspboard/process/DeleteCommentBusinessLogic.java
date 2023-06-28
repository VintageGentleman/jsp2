package jspboard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.CommentDAO;

public class DeleteCommentBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String pwd = request.getParameter("pwd");
		int com_id = Integer.parseInt(request.getParameter("com_id")); 
		
		if(pwd == null || pwd.equals("")) {
			return "/board/commentDelete_chk";
		}
		
		CommentDAO dao = new CommentDAO();
		
		if(pwd.equals(dao.getPassword(com_id))) {
			System.out.println(com_id);
			dao.deleteComment(com_id);
			return "redirect:" + request.getContextPath() + "/home";
		} else {
			return "/board/commentDelete_chk";
		}
	}

}
