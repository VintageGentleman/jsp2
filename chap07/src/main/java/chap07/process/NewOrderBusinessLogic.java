package chap07.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.dao.PizzaOrderDAO_Impl;
import chap07.model.PizzaOrder;

public class NewOrderBusinessLogic implements BusinessLogic {
	
	String preStr = "O-"; 
	static int postNum = 1;
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		PizzaOrder order = new PizzaOrder();
		
		if(postNum > 9999) {
			postNum = 1;
		}
		
		order.setOrder_id(preStr + String.format("%04d", postNum++));
		order.setCustomer_id(request.getParameter("customer_id"));
		order.setPizza_id(request.getParameter("pizza_id"));
		
		String address = request.getParameter("address");
		order.setAddress(address);
		
		String pizza_option = request.getParameter("pizza_option");
		if(pizza_option == null) {
			order.setPizza_option(0);
		} else {
			order.setPizza_option(Integer.parseInt(pizza_option));
		}
		
		PizzaOrderDAO_Impl dao = new PizzaOrderDAO_Impl();
		
		if(dao.newOrder(order) == 1) {
			System.out.println("포워딩");
			return "/pizza/orderSuccess";
		} else {
			System.out.println("INSERT 실패");
			return "redirect:/chap07/pizza/order";
		}
		
	}

}
