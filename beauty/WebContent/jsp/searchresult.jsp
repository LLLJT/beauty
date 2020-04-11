<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>搜索结果</title>

<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="../css/bootstrap.css">
<!-- Style-CSS -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<!-- Font-Awesome-Icons-CSS -->
<link href="../css/font-awesome.min.css" rel="stylesheet">
<!-- Web-Fonts -->
<link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext"
	rel="stylesheet">

<script>
	//加载网页时滚屏到top
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>

</head>

<body>
	<!-- main banner -->
	<div class="main-top" id="home">
		<!-- header -->
		<header>
			<div class="container-fluid">
				<div
					class="header d-lg-flex justify-content-between align-items-center py-3 px-sm-3">
					<!-- logo -->
					<div id="logo">
						<h1>
							<a href="index.jsp"><span class="fa fa-linode mr-2"></span>reachableBeauty</a>
						</h1>
					</div>
					<!-- //logo -->
					<div class="d-flex mt-lg-1 mt-sm-2 mt-3 justify-content-center">
						<!-- search -->
						<div class="search-w3layouts mr-3">
							<form action="#" method="post"
								class="search-bottom-wthree d-flex">
								<input class="search" type="search" placeholder="Search Here..." required>
								<button class="form-control btn" type="submit">
									<span class="fa fa-search"></span>
								</button>
							</form>
						</div>
						<!-- //search -->
						<!-- 登出&个人中心 -->
						<a class="dwn-w3ls btn mr-1" href="usercenter.jsp" target="_blank">
							<span class="fa fa-user-circle-o" title="个人中心"></span>
						</a> 
						<a class="dwn-w3ls btn" href="login.jsp" target="_self">
							<span class="fa fa-sign-out" title="退出登录"></span>
						</a>
						<!-- //logout&usercenter -->
					</div>
				</div>
			</div>
		</header>
		<!-- //header -->

		<!-- banner -->
		<div class="banner_w3lspvt-2 mt-3">
			<div class="subscribe mx-auto">
				<div class="icon-effect-w3">
					<span class="fa fa-search"></span>
				</div>
				<h2 class="tittle text-center font-weight-bold mb-3">Start Searching!</h2>
				<form action="#" method="post" class="subscribe-wthree pt-2">
					<div class="d-flex subscribe-wthree-field">
						<input class="form-control" type="text" placeholder="Input the keyword..." name="email" required>
						<button class="btn form-control w-50" type="submit">搜索Search</button>
					</div>
				</form>
			</div>
		</div>
		<!-- //banner -->
	</div>
	<!-- //main banner -->

	<div class="bg-li row mt-5">
		<div class="container py-xl-2 py-lg-2 ">
			<div class="float-right">
				<span class="btn fa fa-th fa-2x mr-5"></span>
				<span class="btn fa fa-th-list fa-2x mr-5"></span>
			</div>
		</div>
	</div>

	<!-- result -->
	<div class="price-sec">
		<div class="container pb-xl-5 py-lg-3">
			<div class="inner_sec_info_w3_info mt-3">
				<div class="row price-grid-main">
				
				<!-- result1 -->
				<div class="col-lg-3 col-sm-6 price-info mb-4">
					<div class="prices p-4">
						<div class="prices-bottom text-center">
							<img alt="一张图片" style="max-width: 200px; max-height: 160px;" src="../images/portfolio/folio-2.jpeg" />
							<div class="my-2" ><h4>headlineheadline很长很长很长的headline</h4></div>
							<p>
								Community Access
								Annual Reports
								Free Support
								Expert Reviews
							</p>
							
						</div>
					</div>
				</div>
				<!-- //result1 -->

				<div class="col-lg-3 col-sm-6 price-info mb-4">
					<div class="prices p-4">
						<div class="prices-bottom text-center">
							<img alt="一张图片" style="max-width: 200px; max-height: 160px;"
								src="../images/portfolio/folio-2.jpg" />
							<div class="my-2">
								<h4>headlineheadline很长很长很长的headline</h4>
							</div>
							<p>Community Access Annual Reports Free Support Expert
								Reviews</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 price-info mb-4">
					<div class="prices p-4">
						<div class="prices-bottom text-center">
							<img alt="一张图片" style="max-width: 200px; max-height: 160px;"
								src="../images/portfolio/folio-1.jpeg" />
							<div class="my-2">
								<h4>headlineheadline很长很长很长的headline</h4>
							</div>
							<p>Community Access Annual Reports Free Support Expert
								Reviews</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 price-info mb-4">
					<div class="prices p-4">
						<div class="prices-bottom text-center">
							<img alt="一张图片" style="max-width: 200px; max-height: 160px;"
								src="../images/portfolio/folio-3.jpeg" />
							<div class="my-2">
								<h4>headlineheadline很长很长很长的headline</h4>
							</div>
							<p>Community Access Annual Reports Free Support Expert
								Reviews</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 price-info mb-4">
					<div class="prices p-4">
						<div class="prices-bottom text-center">
							<img alt="一张图片" style="max-width: 200px; max-height: 160px;"
								src="../images/portfolio/folio-4.jpeg" />
							<div class="my-2">
								<h4>headlineheadline很长很长很长的headline</h4>
							</div>
							<p>Community Access Annual Reports Free Support Expert
								Reviews</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 price-info mb-4">
					<div class="prices p-4">
						<div class="prices-bottom text-center">
							<img alt="一张图片" style="max-width: 200px; max-height: 160px;"
								src="../images/portfolio/folio-5.jpeg" />
							<div class="my-2">
								<h4>headlineheadline很长很长很长的headline</h4>
							</div>
							<p>Community Access Annual Reports Free Support Expert
								Reviews</p>
						</div>
					</div>
				</div>


				</div>
			</div>
		</div>
	</div>
	<!-- //result -->

	<!-- copyright bottom -->
	<div class="copy-bottom bg-li py-4 border-top">
		<div class="container-fluid">
			<div class="d-md-flex px-md-3 position-relative text-center">
				<!-- copyright -->
				<div class="copy_right mx-md-auto mb-md-0 mb-3">
					<p class="text-bl let">Copyright &copy; 2020. reachableBeauty
						All rights reserved.</p>
				</div>
				<!-- //copyright -->
				<!-- move top icon -->
				<a href="#home" class="move-top text-center"> <span
					class="fa fa-level-up" aria-hidden="true"></span>
				</a>
				<!-- //move top icon -->
			</div>
		</div>
	</div>
	<!-- //copyright bottom -->

	<!-- JavaScript files-->
	<script src="../js/jquery/jquery.min.js"></script>
	<script src="../js/popper.js/umd/popper.min.js"></script>
	<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<script src="../js/jquery.cookie/jquery.cookie.js"> </script>
	<script src="../js/js.cookie.min.js"></script>
	<script src="../js/front.js"></script>
	
</body>
</html>