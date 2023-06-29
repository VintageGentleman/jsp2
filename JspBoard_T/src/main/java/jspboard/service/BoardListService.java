package jspboard.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.common.Pagination;
import jspboard.dao.BoardDAO;
import jspboard.dao.BoardDAO_impl;

public class BoardListService implements Service {

	BoardDAO boardDAO = new BoardDAO_impl();
	
	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// DB에서 글 목록을 조회해야 한다 (현재 페이지의 10개만)
		int page;
		
		try {
			page = Integer.parseInt(request.getParameter("page"));
		} catch(NumberFormatException e) {
			page = 1;
		}
		
		Pagination pagination = new Pagination(page, 10);
		
		// page -> SELECT * FROM board WHERE board_id BETWEEN A AND B;
		request.setAttribute("boards", boardDAO.getPage(pagination));
		request.setAttribute("page", pagination);
		
		// /WEB-INF/views/board/list.jsp로 포워드
		return "/board/list";
	}

}
