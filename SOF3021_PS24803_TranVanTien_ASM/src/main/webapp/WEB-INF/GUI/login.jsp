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

.gi-check {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.gi-more {
	display: inline;
}

.gi-more label {
	display: flex;
	align-items: center;
}

.checkmark {
	display: inline-block;
	width: 1px;
	height: 1px;
	border: 1px solid #ccc;
	border-radius: 2px;
	margin-right: 10px;
	position: relative;
}

.checkmark:after {
	content: "";
	display: none;
	position: absolute;
	left: 2px;
	top: 1px;
	width: 6px;
	height: 10px;
	border: solid #333;
	border-width: 0 2px 2px 0;
	transform: rotate(45deg);
}

.checkmark input:checked ~ .checkmark:after {
	display: block;
}

.switch-login {
	text-align: center;
	margin-top: 30px;
}

.switch-login .or-login {
	font-weight: 600;
	color: #333;
}

#save-pass {
	width: 20px;
	margin-left: 10px;
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
						<a href="#"><i class="fa fa-home"></i> Home</a> <span>Login</span>
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
					<div class="login-form">
						<h2>Login</h2>
						<a>${message}</a>
						<form action="login" method="post">
							<div class="group-input">
								<label for="username">Username or email address *</label> <input
									type="text" id="username" name="username">
							</div>
							<div class="group-input">
								<label for="password">Password *</label> <input type="text"
									id="password" name="password">
							</div>
							<div class="group-input gi-check">
								<div class="gi-more">
									<label for="save-pass"> Save Password <input
										type="checkbox" id="save-pass" name="remember"> <span
										class="checkmark"></span>
									</label> <a href="forgot-password" class="forget-pass">Forget your
										Password</a>
								</div>
							</div>
							<button type="submit" class="site-btn login-btn">Sign In</button>
						</form>
						<div class="switch-login">
							<a href="register" class="or-login">Or Create An Account</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Register Form Section End -->

	<%@ include file="/WEB-INF/common/user/footer.jsp"%>
</body>
</html>