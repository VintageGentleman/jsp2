package jspboard.service;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspboard.common.Cookies;
import jspboard.dao.BoardDAO;
import jspboard.dao.BoardDAO_impl;

public class BoardDetailService implements Service {

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
		
		Cookie cookie = Cookies.getCookie(request, "viewed"); 
		
		// 쿠키를 꺼내보고 여부에 따라 조회수를 1 증가
		if(cookie == null) {
			// 아직 쿠키가 없다면 조회수를 증가시키고 최초의 쿠키를 등록한다
			boardDAO.plusViewCount(iid);
			Cookie nCookie = new Cookie("viewed", id);
			nCookie.setMaxAge(600); // 10분
			nCookie.setPath(request.getContextPath() + "/board/");
			response.addCookie(nCookie);
		} else {
			// 쿠키가 존재한다면 값을 꺼내서 id를 확인한다
			String[] cookie_ids = cookie.getValue().split("/");
			
			boolean viewed = false;
			
			for(String cookie_id : cookie_ids) {
				if(viewed = cookie_id.equals(id)) {
					break;
				}
			}
			
			// 본적 없다면 조회수 증가 + 쿠키에 번호 추가
			if(!viewed) {
				
				boardDAO.plusViewCount(iid);
				
				Cookie nCookie = new Cookie("viewed", cookie.getValue() + "/" + id);
				nCookie.setMaxAge(600);
				nCookie.setPath(request.getContextPath() + "/board/");
				response.addCookie(nCookie);
			}
			
		}
		
		request.setAttribute("board", boardDAO.get(iid));
		
		return "/board/detail";
	}

}
