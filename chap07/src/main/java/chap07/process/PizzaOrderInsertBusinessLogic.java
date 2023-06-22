package chap07.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.dao.PizzaOrderDAO;
import chap07.dao.PizzaOrderDAO_Impl;
import chap07.model.PizzaOrder;

public class PizzaOrderInsertBusinessLogic implements BusinessLogic {

	PizzaOrderDAO dao = new PizzaOrderDAO_Impl();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request에서 form의 데이터를 꺼낸다
		request.setCharacterEncoding("EUC-KR");

		String pizza_id = request.getParameter("pizza_id2"); 
		String customer_id = request.getParameter("customer_id2");
		String address = request.getParameter("address2"); 
		String pizza_option = request.getParameter("pizza_option2");

		// 전달받은 파라미터에 잘못된 값이 있으면 다시 입력하도록 만들기
		if(
			pizza_id == null || pizza_id.trim().equals("") ||
			customer_id == null || customer_id.trim().equals("") ||
			address == null || address.trim().equals("") ||
			pizza_option == null || pizza_option.trim().equals("")
		) {
			return "redirect:" + request.getContextPath() + "/pizza/order";
		}
		
		System.out.println(pizza_id);
		System.out.println(customer_id);
		System.out.println(address);
		System.out.println(pizza_option);
		
		// DB에 insert 진행
		PizzaOrder pizza_order = new PizzaOrder();
		pizza_order.setPizza_id(pizza_id);
		pizza_order.setCustomer_id(customer_id);
		pizza_order.setAddress(address);
		pizza_order.setPizza_option(Integer.parseInt(pizza_option));
		
		int row = dao.insertOrder(pizza_order);
		
		if(row > 0) {
			return "redirect:" + request.getContextPath() + "/pizza/order/result?order_id=" + pizza_order.getOrder_id();
		} else {
			return "redirect:" + request.getContextPath() + "/pizza/order";
		}
		
	}

}
