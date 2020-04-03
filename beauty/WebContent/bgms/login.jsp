<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>登录</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<!-- Google fonts - Popppins for copy-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
<!-- orion icons-->
<link rel="stylesheet" href="css/orionicons.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.png?3">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
	<div class="page-holder d-flex align-items-center">
		<div class="container">
			<div class="row align-items-center py-5">
				<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
					<div class="pr-lg-5">
						<img src="img/illustration.svg" alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-5 px-lg-4">
					<h1 class="text-base text-primary text-uppercase mb-4">eLeaf后台管理系统</h1>
					<h2 class="mb-4">Welcome back!</h2>

					<form id="loginForm" action="index.jsp" class="mt-4">
						<div class="form-group mb-4">
							<input type="text" name="username" placeholder="输入您的登录名"
								class="form-control border-0 shadow form-control-lg">
						</div>
						<div class="form-group mb-4">
							<input type="password" name="passowrd" placeholder="输入您的密码"
								class="form-control border-0 shadow form-control-lg text-violet">
						</div>
						<div class="form-group mb-4">
							<div class="custom-control custom-checkbox">
								<input id="customCheck1" type="checkbox" checked
									class="custom-control-input"> <label for="customCheck1"
									class="custom-control-label">记住密码</label>
							</div>
						</div>
						<button type="submit" class="btn btn-primary shadow px-5">登录</button>
					</form>
				</div>
			</div>
			<p class="mt-5 mb-0 text-gray-400 text-center">
				Copyright &copy; 2019. eLeaf Group8301 All rights reserved.
			</p>
		</div>
	</div>
	<!-- JavaScript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js"> </script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="js/js.cookie.min.js"></script>
	<script src="js/front.js"></script>
</body>
</html>