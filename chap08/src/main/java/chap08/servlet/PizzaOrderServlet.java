package chap08.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap08.model.PizzaOrder;

public class PizzaOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 5871547228845392868L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// DB에서 데이터를 꺼낸다
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try(
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "coffeeJOA", "1234");
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM pizza_order");
			ResultSet rs = pstmt.executeQuery();
		) {
			
			List<PizzaOrder> orders = new ArrayList<>();
			
			while(rs.next()) {
				PizzaOrder order = new PizzaOrder();
				
				request.setAttribute("orders", orders);
				
				order.setOrder_id(rs.getString("order_id"));
				order.setCustomer_id(rs.getString("customer_id"));
				order.setPizza_id(rs.getString("pizza_id"));
				order.setAddress(rs.getString("address"));
				order.setPizza_option(rs.getInt("pizza_option"));
				
				orders.add(order);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/WEB-INF/quiz/order_list_t.jsp").forward(request, response);
	}

}
