<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>

 <!-- Bootstrap CSS-->
 <link rel="stylesheet" href="../css/bootstrap.css">
 <!-- Font Awesome CSS-->
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
 <!-- Google fonts - Popppins for copy-->
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
 <!-- theme stylesheet-->
 <link rel="stylesheet" href="../css/style.default.css" id="theme-stylesheet">

</head>
<body>
	<div class="page-holder d-flex align-items-center">
		<div class="container">
			<div class="row align-items-center py-5">
				<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
					<div class="pr-lg-5">
						<img src="../images/illustration.svg" alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-5 px-lg-4">
					<h1 class="text-base text-primary text-uppercase mb-4">美，一眼望穿</h1>
					<h2 class="mb-4">Welcome back!</h2>
					
					<form id="loginForm" action="/user/login" class="mt-4" method="get">
						<div class="form-group mb-4">
							<input type="text" name="username" placeholder="输入您的登录名"
								class="form-control border-0 shadow form-control-lg">
						</div>
						<div class="form-group mb-4">
							<input type="password" name="password" placeholder="输入您的密码"
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
				Copyright &copy; 2020. reachableBeauty All rights reserved.
			</p>
		</div>
	</div>
	<!-- JavaScript files-->
	<script src="../js/jquery/jquery.min.js"></script>
	<script src="../js/popper.js/umd/popper.min.js"> </script><!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<script src="../js/jquery.cookie/jquery.cookie.js"> </script>
	<!-- <script src="vendor/chart.js/Chart.min.js"></script> -->
	<script src="../js/js.cookie.min.js"></script>
	<script src="../js/front.js"></script>
</body>
</html>
