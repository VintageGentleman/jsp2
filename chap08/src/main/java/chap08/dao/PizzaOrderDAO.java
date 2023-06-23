package chap08.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chap08.model.PizzaOrder;

public class PizzaOrderDAO {
	
	public List<PizzaOrder> getAllOrders() {

		String query = "SELECT * FROM pizza_order";
		List<PizzaOrder> order_list = new ArrayList<>();

		try( 
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
		) {
			while(rs.next()) {
				PizzaOrder order = new PizzaOrder();
				
				order.setOrder_id(rs.getString(1));
				order.setCustomer_id(rs.getString(2));
				order.setPizza_id(rs.getString(3));
				order.setAddress(rs.getString(4));
				order.setPizza_option(rs.getInt(5));
				
				order_list.add(order);
			}
			return order_list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
