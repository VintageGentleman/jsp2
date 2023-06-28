package jspboard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.CommentDAO;
import jspboard.model.Comment;

public class UpdateChkCommentBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String pwd = request.getParameter("pwd");
		int com_id = Integer.parseInt(request.getParameter("com_id")); 
		
		if(pwd == null || pwd.equals("")) {
			return "/board/commentUpdate_chk";
		}
		
		CommentDAO dao = new CommentDAO();
		
		if(pwd.equals(dao.getPassword(com_id))) {
			Comment com = dao.selectComment(com_id);
			
			request.setAttribute("comment", com);
			
			return "/board/commentUpdate";
		} else {
			return "/board/commentUpdate_chk";
		}
		
	}

}
