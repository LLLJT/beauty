<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>订单管理</title>
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
					<i class='o-table-content-1 mr-3 text-gray'></i> <span>订单管理</span>
			</a>
				<div id='orders' class='collapse show'>
					<ul
						class='sidebar-menu list-unstyled border-left border-primary border-thick'>
						<li class='sidebar-list-item'><a href='order_log.jsp'
							class='sidebar-link text-muted pl-lg-5'>订单日志</a></li>
						<li class='sidebar-list-item'><a href='order_info.jsp'
							class='sidebar-link text-muted pl-lg-5 active'>订单详情</a></li>
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
								disabled="disabled ">增加</button>
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
									<h6 class="text-uppercase mb-0">订单管理</h6>
								</div>
								<div class="card-body" "><!-- style="overflow: scroll; -->
									<table class="table table-striped table-hover card-text"> <!-- style="min-width: 1500px;" -->
										<thead>
											<tr>
												<th>#</th>
												<th>operation</th>
												<th>订单状态</th>
												<th>流水号</th>
												<th>下单用户</th>
												<th>下单时间</th>
											</tr>
										</thead>
										<tbody>
											<tr class="text-muted" data-toggle='collapse' data-target='#good1' aria-expanded='false' aria-controls='good1'>
												<th scope="row">1</th>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-warning send">发货</button>
														<button type="button" class="btn btn-sm btn-danger cancel">取消</button>
													</div>
												</td>

												<td>Mark</td>
												<td>Otto</td>
												<td>Mark</td>
												<td>Otto</td>
												</tr>

											<tr id='good1' class='collapse'>
												<td colspan="6">
													<div>
														<div class="row">
															<div class="col-lg-12">

																<div class="col">
																<strong class="text-primary">基本信息</strong>
																	<div class="row-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
																		
																		<table class="table table-striped table-sm card-text">
																			<tr>
																				<th>流水号</th>
																				<td>202001010034701</td>
																			</tr>
																			<tr>
																				<th>下单用户</th>
																				<td>testfbw</td>
																			</tr>
																			<tr>
																				<th>下单时间</th>
																				<td>2020-1-1 03:47</td>
																			</tr>
																			<tr>
																				<th>物流公司</th>
																				<td>顺丰快递</td>
																			</tr>
																			<tr>
																				<th>收货地址</th>
																				<td>上海商学院奉浦校区</td>
																			</tr>
																		</table>
																	</div>
																	<h5 class="page-header"></h5>
																	<strong class="text-primary">货物清单</strong>
																	<div class="row-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
																		
																		<table class="table table-striped table-sm card-text">
																			<thead>
																				<tr>
																					<td>货物名</td>
																					<td>数量</td>
																					<td>单价</td>
																				</tr>
																				<tr>
																					<td>毛巾</td>
																					<td>2</td>
																					<td>10</td>
																				</tr>
																				<tr>
																					<td>牙刷</td>
																					<td>10</td>
																					<td>2</td>
																				</tr>
																			</thead>
																		</table>
																	</div>
																	<h5 class="page-header"></h5>
																	<div class="row-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left" style="width:35%;float:right">
																		<table style="color:#007bff; "  class="table card-text" >
																			<tr>
																				<th>小计</th>
																			</tr>
																			<tr>
																				<th>运费</th>
																			</tr>
																			<tr>
																				<th>实付</th>
																			</tr>
																		</table>
																	</div>
																</div>

															</div>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">2</th>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-warning send">发货</button>
														<button type="button" class="btn btn-sm btn-danger cancel">取消</button>
													</div>
												</td>

												<td>Jacob</td>
												<td>Thornton</td>
												<td>Mark</td>
												<td>Otto</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-warning send">发货</button>
														<button type="button" class="btn btn-sm btn-danger cancel">取消</button>
													</div>
												</td>
												<td>Larry</td>
												<td>the Bird</td>
												<td>Mark</td>
												<td>Otto</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-warning send">发货</button>
														<button type="button" class="btn btn-sm btn-danger cancel">取消</button>
													</div>
												</td>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>Mark</td>
												<td>Otto</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-warning send">发货</button>
														<button type="button" class="btn btn-sm btn-danger cancel">取消</button>
													</div>
												</td>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>Mark</td>
												<td>Otto</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-warning send">发货</button>
														<button type="button" class="btn btn-sm btn-danger cancel">取消</button>
													</div>
												</td>
												<td>Sam</td>
												<td>Nevoresky</td>
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
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="js/js.cookie.min.js"></script>
	<script src="js/front.js"></script>
	<script>
		$('.btn.btn-sm.btn-warning.send').click(function() {
			alert('订单已发货。');
			//do something
			$(this).parent().empty();
		})
		$('.btn.btn-sm.btn-danger.cancel').click(function() {
			if (confirm("确定要取消订单吗？")) {
				alert("订单已取消。")
				//do delete
				$(this).parent().empty();
			} else {
				alert("用户撤回操作。")
			}
		})
	</script>
</body>
</html>