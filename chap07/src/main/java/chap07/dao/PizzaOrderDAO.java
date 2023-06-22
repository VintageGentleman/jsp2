package chap07.dao;

import java.util.List;

import chap07.model.OrderResult;
import chap07.model.Pizza;
import chap07.model.PizzaOrder;

// DAO : Data Access Object, DB로부터 데이터를 조회해오는 기능들을 모아놓는 객체
// PizzaOrderDAO : PizzaOrder라는 기능을 구현하는데 필요한 모든 데이터베이스 접근을 구현하는 곳
public interface PizzaOrderDAO {
	
	// 고를 수 있는 모든 피자들을 조회하는 메서드
	List<Pizza> getAllPizza();

	// 연습문제: 새로운 주문을 추가하는 메서드 구현 후 적용해보기
	int newOrder(PizzaOrder order);
	// 함께풀기
	int insertOrder(PizzaOrder pizza_order);
	
	// 해당 고객의 피자 주문 내역을 조회해서 리스트로 받아오는 메서드
	List<PizzaOrder> getCustomerOrders(String customer_id);
	
	// 주문 번호로 해당 주문 정보를 조회하는 메서드
	OrderResult getResult(String order_id);
	
	// 주문 번호로 해당 주문을 취소하는 메서드
	int deleteOrder(String order_id);

}

// 업캐스팅이 될 때와 안 될 떄

// 일일이 교체하지 않아도 됨
// PizzaOrderDAO dao = new PizzaOrderDAO_Impl();

// 선언부분을 모두 수정해줘야함
// PizzaOrderDAO_Impl2 dao = new PizzaOrderDAO_Impl2();

