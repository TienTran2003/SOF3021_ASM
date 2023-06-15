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
			<div class="col-lg-8">
				<div class="card">
					<div class="card-body">
						<ul class="nav nav-tabs nav-tabs-primary top-icon nav-justified">
							<li class="nav-item"><a href="javascript:void();"
								data-target="#edit" data-toggle="pill" class="nav-link"><i
									class="icon-note"></i> <span class="hidden-xs">Edit</span></a></li>
						</ul>
						<div class="tab-content p-3">
							<div class="tab-pane active" id="profile">
								<form:form action="/admin/product" modelAttribute="item">
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">ID</label>
										<div class="col-lg-9">
											<form:input path="id" class="form-control" type="text"
												placeholder="ID" disabled="true" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">Full
											name</label>
										<div class="col-lg-9">
											<form:input path="name" placeholder="Name"
												class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">Change
											profile</label>
										<div class="col-lg-9">
											<form:input type="file" path="image" class="form-control"
												placeholder="${item.image}" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">Price</label>
										<div class="col-lg-9">
											<form:input class="form-control" path="price"
												placeholder="Price" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">Create
											Date</label>
										<div class="col-lg-9">
											<form:input type="date" class="form-control" id="createDate"
												disabled="true" path="createDate"
												aria-describedby="createDateHid" placeholder="createDate" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">Available</label>
										<div class="col-lg-9">
											<form:input path="available" placeholder="Available"
												class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label">CategoryId</label>
										<div class="col-lg-9">
											<form:input path="category" placeholder="Category Id?"
												class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-3 col-form-label form-control-label"></label>
										<div class="col-lg-9">
											<button type="submit" class="btn btn-primary "
												formaction="/admin/product/create">Insert</button>
											<button type="submit" class="btn btn-warning"
												formaction="/admin/product/update">Update</button>
											<button type="submit" class="btn btn-danger"
												formaction="/admin/product/delete/${item.id}">Delete</button>
											<button type="submit" class="btn btn-success"
												formaction="/admin/product">Reset</button>
										</div>
									</div>
								</form:form>
							</div>
						</div>
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