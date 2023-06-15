<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
	<div class="offcanvas__option">
		<div class="offcanvas__links">
			<c:choose>
				<c:when test="${not empty sessionScope.currentUser}">
					<a>${sessionScope.currentUser.fullname}</a>
					<a href="/logout">Log out</a>

					<c:if test="${sessionScope.currentUser.admin}">
						<a href="/home/admin" class="login-panel"><i
							class="fa fa-user"></i>Administration</a>
					</c:if>
				</c:when>
				<c:otherwise>
					<a href="/home/login">Sign in</a>
					<a href="/home/register">Register</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div class="offcanvas__nav__option">
		<a href="#" class="search-switch"><img
			src="/user/img/icon/search.png" alt=""></a> <a href="#"><img
			src="img/icon/heart.png" alt=""></a> <a href="#"><img
			src="/user/img/icon/cart.png" alt=""> <span>0</span></a>
		<div class="price">$0.00</div>
	</div>
	<div id="mobile-menu-wrap"></div>
	<div class="offcanvas__text">
		<p>Free shipping, 30-day return or refund guarantee.</p>
	</div>
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-7">
					<div class="header__top__left">
						<p>Free shipping, 30-day return or refund guarantee.</p>
					</div>
				</div>
				<div class="col-lg-6 col-md-5">
					<div class="header__top__right">
						<div class="header__top__links">
							<c:choose>
								<c:when test="${not empty sessionScope.currentUser}">
									<a>${sessionScope.currentUser.fullname}</a>
									<a href="/logout">Log out</a>

									<c:if test="${sessionScope.currentUser.admin}">
										<a href="/home/admin" class="login-panel"><i
											class="fa fa-user"></i>Administration</a>
									</c:if>
								</c:when>
								<c:otherwise>
									<a href="/home/login">Sign in</a>
									<a href="/home/register">Register</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3">
				<div class="header__logo">
					<a href="./index.html"><img src="/user/img/logo.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<nav class="header__menu mobile-menu">
					<ul>
						<li class="active"><a href="/home">Home</a></li>
						<li><a href="/home/shop">Shop</a>
							<ul class="dropdown">
								<li><a href="/shop/men">Men Fashion</a></li>
								<li><a href="/shop/women">Women Fashion</a></li>
							</ul></li>
						<li><a href="#">Pages</a>
							<ul class="dropdown">
								<li>
									<form action="/home/myorder" method="post">
										<input type="hidden" name="username"
											value="${sessionScope.currentUser.username}"
											onblur="this.form.submit()">
										<button class="btn btn-warning text-light col">My
											Order</button>
									</form>
								</li>
								<li><a href="./shop-details.html">Shop Details</a></li>
								<li><a href="./shopping-cart.html">Shopping Cart</a></li>
								<li><a href="./checkout.html">Check Out</a></li>
								<li><a href="./blog-details.html">Blog Details</a></li>
							</ul></li>
						<li><a href="./blog.html">Blog</a></li>
						<li><a href="./contact.html">Contacts</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-3 col-md-3">
				<div class="header__nav__option">
					<a href="#" class="search-switch"><img
						src="/user/img/icon/search.png" alt=""></a> <a href="#"><img
						src="/user/img/icon/heart.png" alt=""></a> <a href="/home/cart"><img
						src="/user/img/icon/cart.png" alt=""> <span>0</span></a>
					<div class="price">$0.00</div>
				</div>
			</div>
		</div>
		<div class="canvas__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>
<!-- Header Section End -->