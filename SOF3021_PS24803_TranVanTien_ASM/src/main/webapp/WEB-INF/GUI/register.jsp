<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="/WEB-INF/common/user/head.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
.register-login-section {
	padding-top: 100px;
	padding-bottom: 100px;
	background-color: #f6f6f6;
}

.login-form {
	background-color: #fff;
	padding: 50px;
	border-radius: 8px;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
}

.login-form h2 {
	text-align: center;
	margin-bottom: 30px;
}

.login-form a {
	color: red;
}

.group-input {
	margin-bottom: 25px;
}

.group-input label {
	font-weight: 600;
	display: block;
	margin-bottom: 15px;
}

.group-input input {
	width: 100%;
	height: 50px;
	border: none;
	border-radius: 4px;
	padding: 0 15px;
	background-color: #f2f2f2;
	font-size: 16px;
	color: #333;
}

.switch-login {
	text-align: center;
	margin-top: 30px;
}

.switch-login .or-login {
	font-weight: 600;
	color: #333;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/common/user/header.jsp"%>

	<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<a href="#"><i class="fa fa-home"></i> Home</a> <span>Register</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Form Section Begin -->

	<!-- Register Section Begin -->
	<div class="register-login-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="register-form">
						<h2>Register</h2>
						<form:form method="get" modelAttribute="item">
							<div class="group-input">
								<label for="username">Username or email address *:</label>
								<form:input path="username" type="text" id="username" />
							</div>
							<div class="group-input">
								<label for="pass">Password *:</label>
								<form:input type="text" id="password" path="password" />
							</div>
							<div class="group-input">
								<label for="con-pass">Fullname *:</label>
								<form:input type="text" id="fullname" path="fullname" />
							</div>
							<div class="group-input">
								<label for="con-pass">Email *:</label>
								<form:input type="email" id="email" path="email" />
							</div>

							<button type="submit" class="site-btn register-btn"
								formaction="/home/register/create">REGISTER</button>
						</form:form>
						<div class="switch-login">
							<a href="login" class="or-login">Or Login</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Register Form Section End -->

	<!-- Partner Logo Section Begin -->
	<div class="partner-logo">
		<div class="container">
			<div class="logo-carousel owl-carousel">
				<div class="logo-item">
					<div class="tablecell-inner">
						<img src="img/logo-carousel/logo-1.png" alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img src="img/logo-carousel/logo-2.png" alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img src="img/logo-carousel/logo-3.png" alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img src="img/logo-carousel/logo-4.png" alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img src="img/logo-carousel/logo-5.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Partner Logo Section End -->

	<%@ include file="/WEB-INF/common/user/footer.jsp"%>
</body>
</html>