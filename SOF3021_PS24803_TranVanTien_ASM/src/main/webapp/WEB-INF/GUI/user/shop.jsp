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
	<!-- Hero Section Begin -->
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>Shop</h4>
						<div class="breadcrumb__links">
							<a href="./index.html">Home</a> <span>Shop</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shop Section Begin -->
	<section class="shop spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="shop__sidebar">
						<div class="shop__sidebar__search">
							<form action="/home/search">
								<input type="text" placeholder="Search..." name="keywords">
								<button type="submit">
									<span class="icon_search"></span>
								</button>
							</form>
						</div>
						<div class="shop__sidebar__accordion">
							<div class="accordion" id="accordionExample">
								<div class="card">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseOne">Categories</a>
									</div>
									<div id="collapseOne" class="collapse show"
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__categories">
												<ul class="nice-scroll">
													<li><a href="/home">Home</a></li>
													<li><a href="/home/shop">All Product</a></li>
													<li><a href="/shop/men">Men Product</a></li>
													<li><a href="/shop/women">Women Product</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseTwo">Branding</a>
									</div>
									<div id="collapseTwo" class="collapse show"
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__brand">
												<ul>
													<li><a href="#">Louis Vuitton</a></li>
													<li><a href="#">Chanel</a></li>
													<li><a href="#">Hermes</a></li>
													<li><a href="#">Gucci</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-heading">
										<a data-toggle="collapse">Filter Price</a>
									</div>
									<form action="/home/price">
										<div class="wrapper">
											<div class="price-input">
												<div class="field"
													style="margin-top: 8px; margin-left: 3px;">
													<span>Min: </span> <input type="number" class="input-min"
														name="min" value="0" step="50">
												</div>
												<div class="separator"></div>
												<div class="field" style="margin-top: 8px;">
													<span>Max: </span> <input type="number" class="input-max"
														name="max" value="300" step="50">
												</div>
											</div>
										</div>
										<button type="submit" class="btn btn-primary mt-3">Submit</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="shop__product__option">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="shop__product__option__left">
									<p>Showing 1–12 of 126 results</p>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="shop__product__option__right">
									<p>Sort by Price:</p>
									<select>
										<option value="">Low To High</option>
										<option value="">$0 - $55</option>
										<option value="">$55 - $100</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<c:forEach var="item" items="${page.content}">
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="/images/${item.image}">
										<ul class="product__hover">
											<li><a href="#"><img src="user/img/icon/heart.png"
													alt=""></a></li>
											<li><a href="#"><img src="user/img/icon/compare.png"
													alt=""> <span>Compare</span></a></li>
											<li><a href="#"><img src="user/img/icon/search.png"
													alt=""></a></li>
										</ul>
									</div>
									<div class="product__item__text">
										<h6>${item.name}</h6>
										<a href="/home/cart/add/${item.id}" class="add-cart">+ Add
											To Cart</a>
										<div class="rating">
											<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i>
										</div>
										<h5>${item.price}</h5>
										<div class="product__color__select">
											<label for="pc-4"> <input type="radio" id="pc-4">
											</label> <label class="active black" for="pc-5"> <input
												type="radio" id="pc-5">
											</label> <label class="grey" for="pc-6"> <input type="radio"
												id="pc-6">
											</label>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="text-center button">
						<a href="/home/shop?p=0" class="btn btn-primary">First</a> <a
							href="/home/shop?p=${page.number-1}" class="btn btn-primary">Previous</a>
						<a href="/home/shop?p=${page.number+1}" class="btn btn-primary">Next</a>
						<a href="/home/shop?p=${page.totalPages-1}"
							class="btn btn-primary">Last</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Section End -->
	<%@ include file="/WEB-INF/common/user/footer.jsp"%>
</body>
</html>