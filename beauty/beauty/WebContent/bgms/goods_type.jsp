<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>商品类别管理</title>
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
<script type="text/javascript">
function update(id){
	window.location.href="update/goods_type_update.jsp?id="+id
}
</script>
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

			<li class='sidebar-list-item'><a href='#'
				class='sidebar-link text-muted active' data-toggle='collapse'
				data-target='#goods' aria-expanded="true" aria-controls='goods'>
					<i class='o-sales-up-1 mr-3 text-gray'></i> <span>商品管理</span>
			</a>
				<div id='goods' class='collapse show'>
					<ul
						class='sidebar-menu list-unstyled border-left border-primary border-thick'>
						<li class='sidebar-list-item'><a href='goods_type.jsp'
							class='sidebar-link text-muted pl-lg-5 active'>商品类别</a></li>
						<li class='sidebar-list-item'><a href='goods_info.jsp'
							class='sidebar-link text-muted pl-lg-5'>商品详情</a></li>
					</ul>
				</div>
			</li>

			<script type="text/javascript" src="js/sidebar/orders_3.js"></script>
			<script type="text/javascript" src="js/sidebar/user_4.js"></script>
			<script type="text/javascript" src="js/sidebar/admin_5.js"></script>
		</div>
		<div class="page-holder w-100 d-flex flex-wrap">
			<div class="container-fluid px-xl-5">
				<section class="py-5">
					<div class="col">
						<form class="form-inline">
							<!-- 
							<button type="button" class="btn btn-sm btn-primary">增加</button>
							<button type="button" class="btn btn-sm btn-warning">编辑</button>
							<button type="button" class="btn btn-sm btn-danger">删除</button> -->
							<button type="button" class="btn btn-primary mb-2"
								style="margin-right: 20px" onclick="window.location.href='insert/goods_type_add.jsp'">增加</button>
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
									<h6 class="text-uppercase mb-0">商品类别管理</h6>
								</div>
								<div class="card-body">
									<table class="table table-striped table-hover card-text">
										<thead>
											<tr>
												<th>#</th>
												<th>类别名</th>
												<th>是否显示</th>
												<th>operation</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">1</th>
												<td>Mark</td>
												<td>Otto</td>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-secondary" onclick="update('xxxid')">编辑</button>
														<button type="button" class="btn btn-sm btn-secondary">删除</button>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">2</th>
												<td>Jacob</td>
												<td>Thornton</td>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-secondary" onclick="update('xxxid')">编辑</button>
														<button type="button" class="btn btn-sm btn-secondary">删除</button>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Larry</td>
												<td>the Bird</td>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-secondary" onclick="update('xxxid')">编辑</button>
														<button type="button" class="btn btn-sm btn-secondary">删除</button>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-secondary" onclick="update('xxxid')">编辑</button>
														<button type="button" class="btn btn-sm btn-secondary">删除</button>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-secondary" onclick="update('xxxid')">编辑</button>
														<button type="button" class="btn btn-sm btn-secondary">删除</button>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Sam</td>
												<td>Nevoresky</td>
												<td>
													<div class="inline">
														<button type="button" class="btn btn-sm btn-secondary" onclick="update('xxxid')">编辑</button>
														<button type="button" class="btn btn-sm btn-secondary">删除</button>
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