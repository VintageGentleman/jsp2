package chap07.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.dao.PizzaOrderDAO_Impl;
import chap07.model.OrderResult;

public class PizzaOrderResultBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PizzaOrderDAO_Impl dao = new PizzaOrderDAO_Impl();
		OrderResult result = dao.getResult(request.getParameter("order_id"));
		
		request.setAttribute("result", result);
		
		return "/pizza/order_result";
	}

}
