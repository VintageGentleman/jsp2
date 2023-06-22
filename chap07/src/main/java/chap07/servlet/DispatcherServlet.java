package chap07.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.process.*;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 5225307830376441658L;

	private Map<String, BusinessLogic> processMapping = new HashMap<>();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		String contextPath = config.getServletContext().getContextPath();
		
		processMapping.put(contextPath + "/pizza/order::GET", new PizzaOrderFormBusinessLogic());
		processMapping.put(contextPath + "/pizza/new_order::GET", new NewOrderBusinessLogic());
		processMapping.put(contextPath + "/pizza/order::POST", new PizzaOrderInsertBusinessLogic());
		processMapping.put(contextPath + "/pizza/order/result::GET", new PizzaOrderResultBusinessLogic());
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("사용자가 요청한 URL: " + request.getRequestURL());
		System.out.println("사용자가 요청한 URI: " + request.getRequestURI());
		System.out.println("요청 방식: " + request.getMethod());
		
		try {
			String nextPage = processMapping
					.get(request.getRequestURI() + "::" + request.getMethod())
					.process(request, response);
				
			if(nextPage.startsWith("redirect:")) {
				response.sendRedirect(nextPage.substring("redirect:".length()));
			} else {
				request.getRequestDispatcher("/WEB-INF/views" + nextPage + ".jsp").forward(request, response);
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
			request.getRequestDispatcher("/WEB-INF/views/error/unknown_uri.jsp").forward(request, response);
			// response.getWriter().append("<html><script>history.back();</script></html>");
		}
		
	}
	
}
