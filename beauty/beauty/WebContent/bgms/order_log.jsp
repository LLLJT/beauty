<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>订单日志</title>
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

	<header class="header">
		<script type="text/javascript" src="js/navigation.js"></script>
	</header>
	<div class="d-flex align-items-stretch">
		<div id="sidebar" class="sidebar py-3">
			<script type="text/javascript" src="js/sidebar/head_1.js"></script>
			<script type="text/javascript" src="js/sidebar/goods_2.js"></script>

			<li class='sidebar-list-item'><a href='#'
				class='sidebar-link text-muted  active' data-toggle='collapse'
				data-target='#orders' aria-expanded='false' aria-controls='orders'>
					<i class='o-table-content-1 mr-3 text-gray'></i> <span>订单详情</span>
			</a>
				<div id='orders' class='collapse show'>
					<ul
						class='sidebar-menu list-unstyled border-left border-primary border-thick'>
						<li class='sidebar-list-item'><a href='order_log.jsp'
							class='sidebar-link text-muted pl-lg-5 active'>订单日志</a></li>
						<li class='sidebar-list-item'><a href='order_info.jsp'
							class='sidebar-link text-muted pl-lg-5'>订单详情</a></li>
					</ul>
				</div></li>

			<script type="text/javascript" src="js/sidebar/user_4.js"></script>
			<script type="text/javascript" src="js/sidebar/admin_5.js"></script>
		</div>
		<div class="page-holder w-100 d-flex flex-wrap">
			<div class="container-fluid px-xl-5">
				<section class="py-5">
					<div class="col">
						<form class="form-inline">
							<button type="button" class="btn mb-2" style="margin-right: 20px"
								disabled="disabled">增加</button>
							<div class="input-group mb-2">
								<div class='col-md-4' style="padding:0px">
									<div class="form-group">
										<div class="input-group date" id="datetimepicker7"
											data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input"
												data-target="#datetimepicker7" />
											<div class="input-group-append"
												data-target="#datetimepicker7" data-toggle="datetimepicker">
												<div class="input-group-text">
													<i class="fa fa-calendar"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class='col-md-4' style="padding:0px">
									<div class="form-group">
										<div class="input-group date" id="datetimepicker8"
											data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input"
												data-target="#datetimepicker8" />
											<div class="input-group-append"
												data-target="#datetimepicker8" data-toggle="datetimepicker">
												<div class="input-group-text">
													<i class="fa fa-calendar"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div style="padding-left:20px">
									<button type="button" class="btn btn-primary" >搜索</button>
								</div>
								<!-- script begin -->
								<script src="vendor/jquery/jquery.min.js"></script>
								<script type="text/javascript">
								$(function() {
									$('#datetimepicker7').datetimepicker({
										format: 'L'
									});
									$('#datetimepicker8').datetimepicker({
										useCurrent : false,
										format: 'L'
									});
									$("#datetimepicker7").on("change.datetimepicker",function(e) {
										$('#datetimepicker8').datetimepicker('minDate',e.date);
									});
									$("#datetimepicker8").on("change.datetimepicker",function(e) {
										$('#datetimepicker7').datetimepicker('maxDate',e.date);
									});
								});
								</script>
								<!-- script end -->
								
							</div>
						</form>

						<div class="row-lg-6 mb-4">
							<div class="card">
								<div class="card-header">
									<h6 class="text-uppercase mb-0">订单日志</h6>
								</div>
								<div class="card-body">
									<table class="table table-striped table-hover card-text">
										<thead>
											<tr>
												<th>#</th>
												<th>修改时间</th>
												<th>订单号</th>
												<th>订单状态</th>
												<th>修改者</th>
												<th>订单类型</th>
												<th>del</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">1</th>
												<td>Mark</td>
												<td>Otto</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>Mark</td>
												<td>Otto</td>
											</tr>
											<tr>
												<th scope="row">2</th>
												<td>Jacob</td>
												<td>Thornton</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>Mark</td>
												<td>Otto</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Larry</td>
												<td>the Bird</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>Mark</td>
												<td>Otto</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>Mark</td>
												<td>Otto</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>Mark</td>
												<td>Otto</td>

											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>Mark</td>
												<td>Otto</td>

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
	
	<script src="vendor/popper.js/umd/popper.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="js/js.cookie.min.js"></script>
	<script src="js/front.js"></script>
	<script src="js/moment-with-locales.min.js"></script>
	<script src="js/tempusdominus-bootstrap-4.js"></script>
	<script src="js/moment-timezone-with-data-2012-2022.min.js"></script>
</body>
</html>