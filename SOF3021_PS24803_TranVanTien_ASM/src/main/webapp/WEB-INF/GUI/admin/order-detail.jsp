<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="/WEB-INF/common/admin/head.jsp"%>
<style type="text/css">
.button>.btn {
	width: 80px;
	float: left;
	margin-left: 13%;
}
</style>
</head>
<body class="bg-theme bg-theme1">
	<%@ include file="/WEB-INF/common/admin/header.jsp"%>


	<div class="clearfix"></div>

	<div class="content-wrapper">
		<div class="container-fluid">

			<!--Start Dashboard Content-->

			<div class="row">
				<div class="col-12 col-lg-4 col-xl-4">
					<div class="card">
						<div class="card-header">Order</div>
						<div class="table-responsive">
							<table class="table align-items-center">
								<tbody>
									<tr>
										<td><i class="fa fa-circle text-white mr-2"></i>ID</td>
										<td>${ord.id}</td>
									</tr>
									<tr>
										<td><i class="fa fa-circle text-white mr-2"></i> Create
											Date</td>
										<td>${ord.createDate}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="col-12 col-lg-4 col-xl-4"></div>

				<div class="col-12 col-lg-4 col-xl-4" style="float: right;">
					<div class="card">
						<div class="card-header">Customer</div>
						<div class="table-responsive">
							<table class="table align-items-center">
								<tbody>
									<tr>
										<td><i class="fa fa-circle text-white mr-2"></i> ID</td>
										<td>${ord.account.username }</td>
									</tr>
									<tr>
										<td><i class="fa fa-circle text-white mr-2"></i> Name</td>
										<td>${ord.account.fullname }</td>
									</tr>
									<tr>
										<td><i class="fa fa-circle text-white mr-2"></i> Address</td>
										<td>${ord.address }</td>
									</tr>
									<tr>
										<td><i class="fa fa-circle text-white mr-2"></i> Email</td>
										<td>${ord.account.email }</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!--End Row-->

			<div class="row">
				<div class="col-12 col-lg-12">
					<div class="card">
						<div class="card-header">
							Recent Order Tables
							<div class="card-action">
								<div class="dropdown">
									<a href="javascript:void();"
										class="dropdown-toggle dropdown-toggle-nocaret"
										data-toggle="dropdown"> <i class="icon-options"></i>
									</a>
									<div class="dropdown-menu dropdown-menu-right">
										<a class="dropdown-item" href="javascript:void();">Action</a>
										<a class="dropdown-item" href="javascript:void();">Another
											action</a> <a class="dropdown-item" href="javascript:void();">Something
											else here</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="javascript:void();">Separated
											link</a>
									</div>
								</div>
							</div>
						</div>

						<div class="table-responsive">
							<table
								class="table align-items-center table-flush table-borderless">

								<thead>
									<tr>
										<th>ID</th>
										<th>Image</th>
										<th>Product ID</th>
										<th>Name</th>
										<th>Price</th>
										<th>Quality</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${page.content}">
										<tr>
											<td>${item.id}</td>
											<td><img src="/images/${item.product.image}" alt=""
												width=10% height="10%" /></td>
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
			<!--End Row-->

			<!--End Dashboard Content-->

			<!--start overlay-->
			<div class="overlay toggle-menu"></div>
			<!--end overlay-->

		</div>
		<!-- End container-fluid-->

	</div>
	<!--End content-wrapper-->
	<!--Start Back To Top Button-->
	<a href="javaScript:void();" class="back-to-top"><i
		class="fa fa-angle-double-up"></i> </a>
	<!--End Back To Top Button-->

	<!--Start footer-->
	<footer class="footer">
		<div class="container">
			<div class="text-center">Copyright © 2018 Dashtreme Admin</div>
		</div>
	</footer>
	<!--End footer-->

	<!--start color switcher-->
	<div class="right-sidebar">
		<div class="switcher-icon">
			<i class="zmdi zmdi-settings zmdi-hc-spin"></i>
		</div>
		<div class="right-sidebar-content">

			<p class="mb-0">Gaussion Texture</p>
			<hr>

			<ul class="switcher">
				<li id="theme1"></li>
				<li id="theme2"></li>
				<li id="theme3"></li>
				<li id="theme4"></li>
				<li id="theme5"></li>
				<li id="theme6"></li>
			</ul>

			<p class="mb-0">Gradient Background</p>
			<hr>

			<ul class="switcher">
				<li id="theme7"></li>
				<li id="theme8"></li>
				<li id="theme9"></li>
				<li id="theme10"></li>
				<li id="theme11"></li>
				<li id="theme12"></li>
				<li id="theme13"></li>
				<li id="theme14"></li>
				<li id="theme15"></li>
			</ul>

		</div>
	</div>
	<!--end color switcher-->

	</div>
	<!--End wrapper-->

	<!-- Bootstrap core JavaScript-->
	<script src="/admin/js/jquery.min.js"></script>
	<script src="/admin/js/popper.min.js"></script>
	<script src="/admin/js/bootstrap.min.js"></script>

	<!-- simplebar js -->
	<script src="/admin/plugins/simplebar/js/simplebar.js"></script>
	<!-- sidebar-menu js -->
	<script src="/admin/js/sidebar-menu.js"></script>
	<!-- loader scripts -->
	<script src="/admin/js/jquery.loading-indicator.js"></script>
	<!-- Custom scripts -->
	<script src="/admin/js/app-script.js"></script>
	<!-- Chart js -->

	<script src="/admin/plugins/Chart.js/Chart.min.js"></script>

	<!-- Index js -->
	<script src="/admin/js/index.js"></script>
</body>
</html>