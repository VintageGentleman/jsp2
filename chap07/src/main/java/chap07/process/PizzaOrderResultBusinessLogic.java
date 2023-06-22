package chap07.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PizzaOrderResultBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		
		return "/pizza/order_result";
	}

}
