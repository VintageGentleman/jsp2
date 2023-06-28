package jspboard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspboard.model.Post;

public class PostDAO {

	public int deletePost(int post_id) {
		String query = "DELETE post"
				+ " WHERE post_id=?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setInt(1, post_id);
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public int updatePost(Post post) {
		
		String query = "UPDATE post SET post_title=?, post_content=?"
				+ " WHERE post_id=?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setString(1, post.getPost_title());
			pstmt.setString(2, post.getPost_content());
			pstmt.setInt(3, post.getPost_id());
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		
	}
	
	public String getPassword(int post_id) {
		String query = "SELECT post_password FROM post WHERE post_id = ?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setInt(1, post_id);
			
			try(
				ResultSet rs = pstmt.executeQuery();
			) {
				rs.next();
				
				return rs.getString("post_password");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public List<Post> selectPostList(int page) {
		
		String query = "SELECT *"
				+ " FROM (SELECT ROWNUM AS rn, post_id, post_title, post_writer, view_count"
				+ "		  FROM post ORDER BY post_id DESC)"
				+ " WHERE rn BETWEEN ? AND ?";
		
		List<Post> postList = new ArrayList<>();
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setInt(1, (page - 1) * 10 + 1);
			pstmt.setInt(2, page * 10);
			
			try(
				ResultSet rs = pstmt.executeQuery();
			) {
				while(rs.next()) {
					Post post = new Post();
					
					post.setPost_id(rs.getInt("post_id"));
					post.setPost_title(rs.getString("post_title"));
					post.setPost_writer(rs.getString("post_writer"));
					post.setView_count(rs.getInt("view_count"));
					
					postList.add(post);
				}
				
				return postList;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public Post selectPostDetail(int post_id) {
		String query = "SELECT post_id, post_time, post_title, post_content, post_writer, view_count"
				+ " FROM post"
				+ " WHERE post_id=?";
		
		Post post = new Post();
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setInt(1, post_id);
			
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			
			post.setPost_id(rs.getInt("post_id"));
			post.setPost_time(rs.getDate("post_time"));
			post.setPost_title(rs.getString("post_title"));
			post.setPost_content(rs.getString("post_content"));
			post.setPost_writer(rs.getString("post_writer"));
			post.setView_count(rs.getInt("view_count"));
			
			return post;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int insertPost(Post post) {
		
		String query = "INSERT INTO post(post_id, post_title, post_content, post_writer, post_password)"
				+ " VALUES(post_id_seq.nextval, ?, ?, ?, ?)";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setString(1, post.getPost_title());
			pstmt.setString(2, post.getPost_content());
			pstmt.setString(3, post.getPost_writer());
			pstmt.setString(4, post.getPost_password());
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		
	}
	
	public int getTotalPostCount() {
		String query = "SELECT count(*) FROM post";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
		) {
			rs.next();
			
			return rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}

	public void updateView_count(Post post) {
		String query = "UPDATE post SET view_count = view_count + 1 WHERE post_id = ?";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setInt(1, post.getPost_id());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
