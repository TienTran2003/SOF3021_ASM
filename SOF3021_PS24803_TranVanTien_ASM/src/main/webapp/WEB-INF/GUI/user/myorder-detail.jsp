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
									<th>No.</th>
									<th>Image</th>
									<th>Id</th>
									<th>Name</th>
									<th>Price</th>
									<th>Quantity</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="i" value="0" />
								<c:forEach var="item" items="${page.content}">
									<tr>
										<td class="p-price text-dark">${i=i+1}</td>
										<td><img
											src="/forUser/img/products/${item.product.image}" alt=""
											width=50% /></td>
										<td>${item.product.id}</td>
										<td>${item.product.name}</td>
										<td>$${item.product.price}</td>
										<td>${item.quantity }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shopping Cart Section End -->

	<%@ include file="/WEB-INF/common/user/footer.jsp"%>
</body>
</html>