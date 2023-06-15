<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="/WEB-INF/common/user/head.jsp"%>
<style type="text/css">
.button>.btn {
	width: 100px;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/common/user/header.jsp"%>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>Shopping Cart</h4>
						<div class="breadcrumb__links">
							<a href="./index.html">Home</a> <a href="./shop.html">Shop</a> <span>Shopping
								Cart</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shopping Cart Section Begin -->
	<section class="shopping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="shopping__cart__table">
						<table>
							<thead>
								<tr>
									<th>Product</th>
									<th>Quantity</th>
									<th>Total</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${cart.items}">
									<form action="/home/cart/update" method="post">
										<input type="hidden" name="id" value="${item.id}">
										<tr>
											<td class="product__cart__item">
												<div class="product__cart__item__pic">
													<img src="images/${item.image}" alt="">
												</div>
												<div class="product__cart__item__text">
													<h6>${item.name}</h6>
													<h5>${item.price}</h5>
												</div>
											</td>
											<td class="quantity__item">
												<div class="quantity">
													<div class="pro-qty-2">
														 <input name="qty" value="${item.qty}" min="0"
															onblur="this.form.submit()"
															class="text-center text-warning"
															style="width: 50px; height: 30px; font-size: 18px; font-weight: bolder; border: none">
														
													</div>
												</div>
											</td>
											<td class="cart__price">${item.price * item.qty}</td>
											<td class="cart__close"><a
												class='btn btn-xs text-danger fa-close'
												style="font-weight: bolder"
												href="/home/cart/remove/${item.id}"><span
													class="glyphicon glyphicon-trash"></span> Remove</a></td>
										</tr>
									</form>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="continue__btn">
								<a href="shop" class="primary-btn continue-shop">Continue
									shopping</a>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="continue__btn update__btn">
								<a href="/home/cart/clear" class="primary-btn up-cart">Clear
									cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="cart__discount">
						<h6>Discount codes</h6>
						<form action="#">
							<input type="text" placeholder="Coupon code">
							<button type="submit">Apply</button>
						</form>
					</div>
					<div class="cart__total">
						<h6>Cart total</h6>
						<ul>
							<li>Total <span>${cart.total}</span></li>
						</ul>
						<c:if test="${empty sessionScope.currentUser}">
							<a href="/home/login" class="proceed-btn">PROCEED TO CHECK
								OUT</a>
						</c:if>
						<c:if test="${not empty sessionScope.currentUser}">
							<a href="/home/checkout" class="proceed-btn">PROCEED TO CHECK
								OUT</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shopping Cart Section End -->

	<%@ include file="/WEB-INF/common/user/footer.jsp"%>
</body>
</html>