package jspboard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspboard.common.Pagination;
import jspboard.model.BoardDTO;

public class BoardDAO_impl implements BoardDAO {

	@Override
	public List<BoardDTO> getPage(Pagination page) {
		List<BoardDTO> boards = new ArrayList<>();
		String sql = "SELECT * FROM"
				+ " (SELECT rownum AS rn, a.* FROM (SELECT * FROM board ORDER BY board_id DESC) a)"
				+ " WHERE rn BETWEEN ? AND ?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setInt(1, page.getStart());
			pstmt.setInt(2, page.getEnd());
			
			try(ResultSet rs = pstmt.executeQuery()) {
				while(rs.next()) {
					BoardDTO board = new BoardDTO(rs);
					boards.add(board);
				}
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return boards;
	}

}
