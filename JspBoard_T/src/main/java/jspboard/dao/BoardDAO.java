package jspboard.dao;

import java.util.List;

import jspboard.common.Pagination;
import jspboard.model.BoardDTO;

public interface BoardDAO {
	
	List<BoardDTO> getPage(Pagination page);
	
	BoardDTO get(Integer pk);
	
	String getBoardPw(Integer pk);
	
	int update(BoardDTO board);

	int plusViewCount(Integer pk);
	
	Integer getBoardCount();
}
