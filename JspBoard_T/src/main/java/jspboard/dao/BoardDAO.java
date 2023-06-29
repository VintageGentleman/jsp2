package jspboard.dao;

import java.util.List;

import jspboard.common.Pagination;
import jspboard.model.BoardDTO;

public interface BoardDAO {
	
	List<BoardDTO> getPage(Pagination page);
	
	
}
