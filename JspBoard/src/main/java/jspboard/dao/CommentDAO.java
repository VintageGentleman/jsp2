package jspboard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspboard.model.Comment;

public class CommentDAO {

	public int deleteComment(int com_id) {
		String query = "DELETE board_comment"
				+ " WHERE com_id=?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setInt(1, com_id);
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public String getPassword(int com_id) {
		String query = "SELECT com_password FROM board_comment WHERE com_id=?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setInt(1, com_id);
			
			try(
				ResultSet rs = pstmt.executeQuery();
			) {
				rs.next();
				
				return rs.getString("com_password");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public int insertComment(Comment comment) {
		
		String query = "INSERT INTO board_comment(com_id, com_content, com_writer, com_password, post_id)"
				+ " VALUES(com_id_seq.nextval, ?, ?, ?, ?)";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setString(1, comment.getCom_content());
			pstmt.setString(2, comment.getCom_writer());
			pstmt.setString(3, comment.getCom_password());
			pstmt.setInt(4, comment.getPost_id());
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		
		}
	
	}
	
	public List<Comment> selectCommentList(int post_id) {
		
		String query = "SELECT com_id, com_content, com_writer FROM board_comment WHERE post_id=?"
				+ " ORDER BY post_id";
		
		List<Comment> list = new ArrayList<>();
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setInt(1, post_id);
			
			try(
				ResultSet rs = pstmt.executeQuery();
			) {
				while(rs.next()) {
					Comment com = new Comment(); 
					
					com.setCom_id(rs.getInt("com_id"));
					com.setCom_content(rs.getString("com_content"));
					com.setCom_writer(rs.getString("com_writer"));
					
					list.add(com);
				}
			}
			
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public Comment selectComment(int com_id) {
		String query = "SELECT com_content, com_writer, post_id FROM board_comment WHERE com_id=?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setInt(1, com_id);
			
			try(
				ResultSet rs = pstmt.executeQuery();
			) {
				rs.next();
				
				Comment com = new Comment(); 
				
				com.setCom_id(com_id);
				com.setCom_content(rs.getString("com_content"));
				com.setCom_writer(rs.getString("com_writer"));
				com.setPost_id(rs.getInt("post_id"));
				
				return com;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public int updatePost(Comment com) {
		String query = "UPDATE board_comment SET com_content=? WHERE com_id=?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setString(1, com.getCom_content());
			pstmt.setInt(2, com.getCom_id());
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
}