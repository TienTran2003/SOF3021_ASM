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
	<!-- Shopping Cart Section Begin -->
	<section class="checkout-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-10">
					<div class="alert alert-success col row mx-1" role="alert">
						Order Successfully!</div>
					<div class="mx-1 mb-2">
						<h5>
							<strong>Order ID:</strong> ${order.id }
						</h5>
						<h5>
							<strong>Name:</strong> ${order.account.fullname }
						</h5>
						<h5>
							<strong>Address:</strong> ${order.address }
						</h5>
						<h5>
							<strong>Email:</strong> ${order.account.email }
						</h5>
						<h5>
							<strong>Create Date:</strong> ${order.createDate }
						</h5>
					</div>
					<section class="shopping-cart spad">
						<div class="container">
							<div class="row">
								<div class="col-lg-8">
									<div class="shopping__cart__table">
										<table>
											<thead>
												<tr>
													<th>No.</th>
													<!-- <th>Image</th> -->
													<th class="p-name">Product Name</th>
													<th>Price</th>
													<th>Quantity</th>
													<th>Total</th>
												</tr>
											</thead>
											<tbody>
												<c:set var="i" value="0" />
												<c:forEach var="item" items="${items}">
													<input type="hidden" name="id" value="${item.id}">
													<tr>
														<td class="p-price text-dark">${i=i+1}</td>
														<td class="p-price first-row">
															<h5>${item.product.name }</h5>
														</td>
														<td class="cart-title first-row text-dark">$${item.price
															}</td>
														<td class="cart-title first-row text-dark">${item.quantity }</td>
														<td class="cart-title first-row text-dark">$${item.price*item.quantity}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</section>
					<div class="row">
						<div class="col-lg-4">
							<div class="cart-buttons">
								<a href="shop" class="primary-btn continue-shop">Continue
									shopping</a>
							</div>
						</div>
						<c:set var="total" value="${0}" />
						<c:forEach var="item" items="${items }">
							<c:set var="total" value="${total+(item.price*item.quantity) }" />
						</c:forEach>
						<div class="col-lg-4 offset-lg-4">
							<div class="proceed-checkout">
								<ul>
									<li class="cart-total">Total: &nbsp &nbsp $${total } <span></span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shopping Cart Section End -->

	<%@ include file="/WEB-INF/common/user/footer.jsp"%>
</body>
</html>