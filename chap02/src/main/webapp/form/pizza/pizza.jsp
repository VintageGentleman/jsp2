<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Personalized Pizza</title>
	<link rel="stylesheet" href="./pizza.css" />
</head>
<body>
	<div id="back">
		<div id="main">
			<div id="header">
				<div>
					<img id="header-img" src="./img/pizza.png" alt="피자사진" />
				</div>
				<div>
					<div>PERSONALIZED PIZZA</div>
					<div>Order Form</div>
				</div>
			</div>
			<div id="pBody">
				<div id="crust" class="pDiv">
					<div><img src="./img/crust.png" alt="도우사진" /></div>
					<div>Pizza Crust</div>
				</div>
				<div class="pPlus">
					<span>+</span>
				</div>
				<div id="topping" class="pDiv">
					<div><img src="./img/sauce.png" alt="소스사진" /></div>
					<div>Topping</div>
				</div>
				<div class="pPlus">
					<span>+</span>
				</div>
				<div id="cheese" class="pDiv">
					<div><img src="./img/cheese.png" alt="치즈사진" /></div>
					<div>Cheese</div>
				</div>
			</div>
			<div id="selection">
				<div>Topping Choices:</div>
				<div>
					<form action="http://localhost:8090/chap02/form/pizza/recipt.jsp">
						<input id="submitBtn" type="submit" value="Order" />
						<div id="sel_crust" class="sel_option">
							<div>
								<label for="crust1">
									<img src="./img/crust.png" alt="도우사진" />
									basic
								</label>
								<input type="radio" id="crust1" name="crust" value="basic" checked />
							</div>
							<div>
								<label for="crust2">
									<img src="./img/crust.png" alt="도우사진" />
									cheese
								</label>
								<input type="radio" id="crust2" name="crust" value="cheese" />
							</div>
							<div>
								<label for="crust3">
									<img src="./img/crust.png" alt="도우사진" />
									sweet potato
								</label>
								<input type="radio" id="crust3" name="crust" value="sweet" />
							</div>
							<div>
								<label for="crust4">
									<img src="./img/crust.png" alt="도우사진" />
									sweet potato&nbsp;cheese
								</label>
								<input type="radio" id="crust4" name="crust" value="sweet_cheese" />
							</div>
						</div>
						<div id="sel_topping" class="sel_option">
							<div>
								<label for="topping1">
									<img src="./img/topping/pepperoni.png" alt="페퍼로니 사진" />
									Pepperoni
								</label>
								<input type="checkbox" id="topping1" value="pepperoni" name="topping" />
							</div>
							<div>
								<label for="topping2">
									<img src="./img/topping/xtra_cheese.png" alt="추가치즈 사진" />
									Xtra Cheese
								</label>
								<input type="checkbox" id="topping2" value="xtra_cheese" name="topping" />
							</div>
							<div>
								<label for="topping3">
									<img src="./img/topping/ham.png" alt="햄 사진" />
									Ham
								</label>
								<input type="checkbox" id="topping3" value="ham" name="topping" />
							</div>
							<div>
								<label for="topping4">
									<img src="./img/topping/pineapple.png" alt="파인애플 사진" />
									Pineapple
								</label>
								<input type="checkbox" id="topping4" value="pineapple" name="topping" />
							</div>
							<div>
								<label for="topping5">
									<img src="./img/topping/onion.png" alt="양파 사진" />
									Onion
								</label>
								<input type="checkbox" id="topping5" value="onion" name="topping" />
							</div>
							<div>
								<label for="topping6">
									<img src="./img/topping/bacon.png" alt="베이컨 사진" />
									Bacon
								</label>
								<input type="checkbox" id="topping6" value="bacon" name="topping" />
							</div>
							<div>
								<label for="topping7">
									<img src="./img/topping/sausage.png" alt="소세지 사진" />
									Sausage
								</label>
								<input type="checkbox" id="topping7" value="sausage" name="topping" />
							</div>
							<div>
								<label for="topping8">
									<img src="./img/topping/olive.png" alt="올리브 사진" />
									olive
								</label>
								<input type="checkbox" id="topping8" value="olive" name="topping" />
							</div>
							<div>
								<label for="topping9">
									<img src="./img/topping/peppers.png" alt="고추 사진" />
									peppers
								</label>
								<input type="checkbox" id="topping9" value="peppers" name="topping" />
							</div>
							<div>
								<label for="topping10">
									<img src="./img/topping/mushrooms.png" alt="버섯 사진" />
									mushrooms
								</label>
								<input type="checkbox" id="topping10" value="mushrooms" name="topping" />
							</div>
						</div>
						<div id="sel_cheese" class="sel_option">
							<div>
								<label for="cheese1">
									<img src="./img/cheese/mozzarella.png" alt="모짜렐라 사진" />
									mozzarella 
								</label>
								<input type="radio" id="cheese1" name="cheese" value="mozzarella" checked />
							</div>
							<div>
								<label for="cheese2">
									<img src="./img/cheese/parmesan.png" alt="파마산 사진" />
									parmesan
								</label>
								<input type="radio" id="cheese2" name="cheese" value="parmesan" />
							</div>
							<div>
								<label for="cheese3">
									<img src="./img/cheese/Cheddar.png" alt="체다 사진" />
									cheddar
								</label>
								<input type="radio" id="cheese3" name="cheese" value="cheddar" />
							</div>
							<div>
								<label for="cheese4">
									<img src="./img/cheese/goda.png" alt="고다 사진" />
									goda
								</label>
								<input type="radio" id="cheese4" name="cheese" value="goda" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="./pizza.js"></script>
</body>
</html>