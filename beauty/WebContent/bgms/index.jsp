<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>eLeaf后台管理系统</title>
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
	<!-- Modal-->
	<script type="text/javascript" src="js/modal.js"></script>
	<!-- navbar-->
	<header class="header">
		<script type="text/javascript" src="js/navigation.js"></script>
	</header>
	<div class="d-flex align-items-stretch">
		<div id="sidebar" class="sidebar py-3">
			<script type="text/javascript" src="js/sidebar/sidebar.js"></script>
		</div>
		<div class="page-holder w-100 d-flex flex-wrap">
			<div class="container-fluid px-xl-5">
				<section class="py-5">
					<div class="card" style="height: 600px;">
						<div class="card-header">
							<h2 class="h6 text-uppercase mb-0">Current Administrator</h2>
						</div>
						<div class="card-body" style="height: 300px">
							<img src="img/avatar-6.jpg" alt="Mark Stephen"
								style="max-width: 200px; float: right;"
								class="img-fluid rounded-circle shadow">
							<h5>
								<br> <br>欢迎您，<br> <br>
							</h5>

							<h3>
								<br>管理员Mark Stephen<br> <br><br> 
							</h3>
							<div class="col-xl-3 col-lg-6 mb-4 mb-xl-0">
								<div
									style="width: 237.45px; height: 70px; padding: 1rem !important; margin: 50px 0px;"
									class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between">
									<div class="flex-grow-1 d-flex align-items-center">
										<div class="dot mr-3 bg-violet"></div>
										<div class="text">
											<h6 class="mb-0">
												<a href="#" data-toggle="modal" data-target="#myModal">修改密码</a>
											</h6>
										</div>
									</div>
									<div class="icon text-white bg-violet">
										<i class="fas fa-server"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<!-- footer begin -->
			<script type="text/javascript" src="js/footer.js"></script>
			<!-- footer end -->
		</div>
	</div>
	<!-- JavaScript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="js/js.cookie.min.js"></script>
	<script src="js/charts-home.js"></script>
	<script src="js/front.js"></script>
</body>
</html>