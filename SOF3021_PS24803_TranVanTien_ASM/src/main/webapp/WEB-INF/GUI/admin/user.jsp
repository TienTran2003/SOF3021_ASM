
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
	width: 100px;
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
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Account Table</h5>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">ID</th>
											<th scope="col">Full Name</th>
											<th scope="col">PassWord</th>
											<th scope="col">Email</th>
											<th scope="col">Admin</th>
											<th scope="col">Active</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${page.content}">
											<tr>
												<td>${item.username}</td>
												<td>${item.fullname}</td>
												<td>${item.password}</td>
												<td>${item.email}</td>
												<td>${item.activated}</td>
												<td>${item.admin}</td>
												<td>
													<div class="form-row">
														<div class="form-group mb-0 col-6">
															<a class="btn btn-light "
																href="/admin/account/edit/${item.username}"
																style="width: 50px;"> Edit</a>
														</div>
														<div class="form-group mb-0 col-6">
															<a class="btn btn-light"
																href="/admin/account/delete/${item.username}"
																style="width: 70px;">Delete</a>
														</div>
													</div>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
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

	<!-- Custom scripts -->
	<script src="/admin/js/app-script.js"></script>

</body>
</html>