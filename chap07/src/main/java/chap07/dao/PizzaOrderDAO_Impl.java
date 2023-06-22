package chap07.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chap07.model.OrderResult;
import chap07.model.Pizza;
import chap07.model.PizzaOrder;

public class PizzaOrderDAO_Impl implements PizzaOrderDAO {

	@Override
	public List<Pizza> getAllPizza() {
		List<Pizza> pizzas = new ArrayList<Pizza>();
		String sql = "SELECT * FROM pizza";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs= pstmt.executeQuery();
		) {
			while(rs.next()) {
				Pizza pizza = new Pizza();
				pizza.setPizza_id(rs.getString("pizza_id"));
				pizza.setPizza_name(rs.getString("pizza_name"));
				pizza.setPizza_price(rs.getInt("pizza_price"));
				pizza.setAvail_option(rs.getInt("avail_option"));
				pizzas.add(pizza);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pizzas;
	}
	
	@Override
	public List<PizzaOrder> getCustomerOrders(String customer_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderResult getResult(String order_id) {
		String query = "SELECT order_id, customer_id, address, pizza_name, pizza_option, pizza_price"
				+ " FROM pizza_order"
				+ " INNER JOIN pizza USING(pizza_id)"
				+ " WHERE order_id='" + order_id + "'";
		
		OrderResult order = new OrderResult();
		System.out.println("매개변수로 받은 order_id: " + order_id);
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			System.out.println("try문 내부: " + order_id);
//			pstmt.setString(1, order_id);
			try(
				ResultSet rs = pstmt.executeQuery(); 
			) {
				while(rs.next()) {
					System.out.println("조회성공");
					order.setOrder_id(order_id);
					order.setCustomer_id(rs.getString("customer_id"));
					order.setAddress(rs.getString("address"));
					order.setPizza_name(rs.getString("pizza_name"));
					order.setPizza_option(rs.getInt("pizza_option"));
					order.setPizza_price(rs.getInt("pizza_price"));
				}
			
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return order;
	}

	@Override
	public int deleteOrder(String order_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * 0: failed, 1: success
	 */
	@Override
	public int newOrder(PizzaOrder order) {
		String query = "INSERT INTO pizza_order VALUES(?, ?, ?, ?, ?)";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
		) {
			pstmt.setString(1, order.getOrder_id());
			pstmt.setString(2, order.getCustomer_id());
			pstmt.setString(3, order.getPizza_id());
			pstmt.setString(4, order.getAddress());
			pstmt.setInt(5, order.getPizza_option());
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	@Override
	public int insertOrder(PizzaOrder pizza_order) {
		
		String sql = "SELECT pizza_order_seq.nextval AS order_id FROM dual";
		
		// INSERT시
		// 나중에 해당 테이블에 컬럼이 추가되는 상황에 대비해 모든 컬럼을 적어두는 것이 좋다
		String sql2 = "INSERT INTO pizza_order(order_id, customer_id, pizza_id, address, pizza_option)"
				+ " VALUES(?, ?, ?, ?, ?)";
		
		try(
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			PreparedStatement pstmt2 = conn.prepareStatement(sql2);
			ResultSet rs = pstmt.executeQuery();
		) {
			// 시퀀스로 꺼낸 다음 ID 값을 Model 객체에 추가하여
			// 다음 리다이렉트의 파라미터로 사용할 수 있도록 한다 
			rs.next();
			pizza_order.setOrder_id(rs.getString(1));
			
			pstmt2.setString(1, pizza_order.getOrder_id());
			pstmt2.setString(2, pizza_order.getCustomer_id());
			pstmt2.setString(3, pizza_order.getPizza_id());
			pstmt2.setString(4, pizza_order.getAddress());
			pstmt2.setInt(5, pizza_order.getPizza_option());
			
			return pstmt2.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		
	}

}
