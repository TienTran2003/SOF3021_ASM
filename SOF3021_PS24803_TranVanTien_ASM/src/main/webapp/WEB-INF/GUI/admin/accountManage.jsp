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

			<div class="row mt-3">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<div class="card-title">Round Vertical Form</div>
							<hr>
							<form:form action="/admin/account" modelAttribute="item">
								<div class="form-group">
									<label for="input-6">ID</label>
									<form:input path="username" type="text"
										class="form-control form-control-rounded" id="username"
										placeholder="ID" />
								</div>
								<div class="form-group">
									<label for="input-6">Full Name</label>
									<form:input path="fullname" type="text"
										class="form-control form-control-rounded" id="input-6"
										placeholder="Full Name" />
								</div>
								<div class="form-group">
									<label for="input-6">Pass Word</label>
									<form:input path="password" type="text"
										class="form-control form-control-rounded" id="input-6"
										placeholder="Pass Word" />
								</div>
								<div class="form-group">
									<label for="input-7">Email</label>
									<form:input type="email" path="email"
										class="form-control form-control-rounded" id="input-7"
										placeholder="Enter Your Email Address" />
								</div>
								<div class="form-group">
									<label for="input-6">Active</label>
									<form:input path="activated" type="text"
										class="form-control form-control-rounded" id="input-6"
										placeholder="Active?" />
								</div>
								<div class="form-group">
									<label for="input-6">Admin</label>
									<form:input path="admin" type="text"
										class="form-control form-control-rounded" id="input-6"
										placeholder="Admin?" />
								</div>
								<div class="form-group">
									<button type="submit" class="btn btn-light btn-round px-5"
										formaction="/admin/account/update">
										<i class="icon-lock"></i> Update
									</button>

									<button type="submit" class="btn btn-light btn-round px-5"
										formaction="/admin/account/delete/${item.username}">
										<i class="icon-lock"></i> Delete
									</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
			<!--End Row-->

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