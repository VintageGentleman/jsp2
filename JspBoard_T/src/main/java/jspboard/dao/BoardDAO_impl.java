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

	@Override
	public BoardDTO get(Integer pk) {
		if(pk == null) {
			return new BoardDTO();
		}
		
		String sql = "SELECT * FROM board WHERE board_id=?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setInt(1, pk);
			
			try(ResultSet rs = pstmt.executeQuery()){
				rs.next();
				return new BoardDTO(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return new BoardDTO();
		}
	}

	@Override
	public String getBoardPw(Integer pk) {
		String sql = "SELECT board_pw FROM board WHERE board_id=?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
				
		) {
			pstmt.setInt(1, pk);
			
			try(ResultSet rs = pstmt.executeQuery()){
				rs.next();
				return rs.getString("board_pw");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int update(BoardDTO board) {
		String sql = "UPDATE board SET"
				+ " board_title=?, board_content=?, write_date=sysdate"
				+ " WHERE board_id=?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setString(1, board.getBoard_title());
			pstmt.setString(2, board.getBoard_content());
			pstmt.setInt(3, board.getBoard_id());
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
	}

	@Override
	public int plusViewCount(Integer pk) {
		
		String sql = "UPDATE board SET board_view=board_view + 1"
				+ " WHERE board_id=?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setInt(1, pk);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
		
	}

	@Override
	public Integer getBoardCount() {
		String sql = "SELECT count(*) FROM board";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
		) {
			rs.next();

			return rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
