<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>会员管理</title>
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
<link rel="stylesheet" href="css/btn_puton.css">
</head>
<body>
	<!-- Modal-->
	<script type="text/javascript" src="js/modal.js"></script>

	<header class="header">
		<script type="text/javascript" src="js/navigation.js"></script>
	</header>
	<div class="d-flex align-items-stretch">
		<div id="sidebar" class="sidebar py-3">
			<script type="text/javascript" src="js/sidebar/head_1.js"></script>
			<script type="text/javascript" src="js/sidebar/goods_2.js"></script>
			<script type="text/javascript" src="js/sidebar/orders_3.js"></script>

			<li class='sidebar-list-item'><a href='user.jsp'
				class='sidebar-link text-muted active'> <i
					class='o-survey-1 mr-3 text-gray'></i> <span>会员管理</span>
			</a></li>

			<script type="text/javascript" src="js/sidebar/admin_5.js"></script>
		</div>
		<div class="page-holder w-100 d-flex flex-wrap">
			<div class="container-fluid px-xl-5">
				<section class="py-5">
					<div class="col">
						<form class="form-inline">
							<button type="button" class="btn mb-2" style="margin-right: 20px"
								disabled="disabled">增加</button>
							<!-- <div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
									<img height="25px" src="data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 64 64' aria-labelledby='title' aria-describedby='desc' role='img' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3ESearch%3C/title%3E%3Cdesc%3EA line styled icon from Orion Icon Library.%3C/desc%3E%3Cpath data-name='layer2' fill='none' stroke='%23ffffff' stroke-miterlimit='10' stroke-width='2' d='M39.049 39.049L56 56' stroke-linejoin='round' stroke-linecap='round'%3E%3C/path%3E%3Ccircle data-name='layer1' cx='27' cy='27' r='17' fill='none' stroke='%23ffffff' stroke-miterlimit='10' stroke-width='2' stroke-linejoin='round' stroke-linecap='round'%3E%3C/circle%3E%3C/svg%3E" alt="Search" />
									</div>
								</div>
								<input id="inlineFormInputGroupUsername2" type="text"
									class="form-control">
							</div>

							<button type="submit" class="btn btn-primary mb-2">搜索</button>
							 -->

							<div class="input-group mb-2">
								<input type="text" placeholder="请输入搜索内容"
									aria-describedby="button-addon2" class="form-control">
								<div class="input-group-append">
									<button id="button-addon2" type="button"
										class="btn btn-primary">搜索</button>
								</div>
							</div>

						</form>

						<div class="row-lg-6 mb-4">
							<div class="card">
								<div class="card-header">
									<h6 class="text-uppercase mb-0">会员管理</h6>
								</div>
								<div class="card-body">
									<table class="table table-striped table-hover card-text">
										<thead>
											<tr>
												<th>#</th>
												<th>会员</th>
												<th>入会时间</th>
												<th>operation</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">1</th>
												<td>Mark</td>
												<td>Otto</td>
												<td>
													<div class="btn-group-toggle" data-toggle="buttons">
														<label class="btn btn-sm btn-ban"> <input
															type="checkbox" checked> 封禁
														</label>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">2</th>
												<td>Jacob</td>
												<td>Thornton</td>
												<td>
													<div class="btn-group-toggle" data-toggle="buttons">
														<label class="btn btn-sm btn-ban"> <input
															type="checkbox" checked> 封禁
														</label>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Larry</td>
												<td>the Bird</td>
												<td>
													<div class="btn-group-toggle" data-toggle="buttons">
														<label class="btn btn-sm btn-ban"> <input
															type="checkbox" checked> 封禁
														</label>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>
													<div class="btn-group-toggle" data-toggle="buttons">
														<label class="btn btn-sm btn-ban"> <input
															type="checkbox" checked> 封禁
														</label>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>
													<div class="btn-group-toggle" data-toggle="buttons">
														<label class="btn btn-sm btn-ban"> <input
															type="checkbox" checked> 封禁
														</label>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>
													<div class="btn-group-toggle" data-toggle="buttons">
														<label class="btn btn-sm btn-ban"> <input
															type="checkbox" checked> 封禁
														</label>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
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
	<script src="js/front.js"></script>
</body>
</html>