package jspboard.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.dao.BoardDAO;
import jspboard.dao.BoardDAO_impl;

public class BoardModifyService implements Service {

	BoardDAO boardDAO = new BoardDAO_impl();
	
	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("id");
		
		if(id == null || id.trim().equals("")) {
			return "redirect:/board/list";
		}
		
		int iid;
		try {
			iid = Integer.parseInt(id);
		} catch (NumberFormatException e) {
			return "redirect:/board/list";
		}
		
		request.setAttribute("board", boardDAO.get(iid));
		
		return "/board/modify";
	}

}
