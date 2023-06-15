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
						<h4>Check Out</h4>
						<div class="breadcrumb__links">
							<a href="./index.html">Home</a> <a href="./shop.html">Shop</a> <span>Check
								Out</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<form action="/home/order-detail" method="post"
					class="checkout-form">
					<div class="row">
						<div class="col-lg-8 col-md-6">
							<h6 class="coupon__code">
								<span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click
									here</a> to enter your code
							</h6>
							<h6 class="checkout__title">Billing Details</h6>
							<div class="checkout__input">
								<p>
									Address<span>*</span>
								</p>
								<input name="address" type="text" placeholder="Street Address"
									class="checkout__input__add">
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="checkout__order">
								<h4 class="order__title">Your order</h4>
								<div class="checkout__order__products">
									Product <span>Total</span>
								</div>
								<ul class="checkout__total__products">
									<c:forEach var="item" items="${cart.items}">
										<li class="fw-normal">${item.name }x${item.qty }<span>$${item.price
												* item.qty}</span></li>
									</c:forEach>
								</ul>
								<ul class="checkout__total__all">

									<li>Total <span>$${cart.total}</span></li>
								</ul>

								<button type="submit" class="site-btn">PLACE ORDER</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->

	<%@ include file="/WEB-INF/common/user/footer.jsp"%>
</body>
</html>