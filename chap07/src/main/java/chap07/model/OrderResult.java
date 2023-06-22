package chap07.model;

public class OrderResult {
	private String order_id;
	private String customer_id;
	private String address;
	private String pizza_name;
	private Integer pizza_option;
	private Integer pizza_price;
	
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPizza_name() {
		return pizza_name;
	}
	public void setPizza_name(String pizza_name) {
		this.pizza_name = pizza_name;
	}
	public Integer getPizza_option() {
		return pizza_option;
	}
	public void setPizza_option(Integer pizza_option) {
		this.pizza_option = pizza_option;
	}
	public Integer getPizza_price() {
		return pizza_price;
	}
	public void setPizza_price(Integer pizza_price) {
		this.pizza_price = pizza_price;
	}
	
}
