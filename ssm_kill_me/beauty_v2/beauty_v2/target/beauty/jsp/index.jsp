<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>

<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="../css/bootstrap.css">
<!-- Style-CSS -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<!-- Font-Awesome-Icons-CSS -->
<link href="../css/font-awesome.min.css" rel="stylesheet">
<!-- Web-Fonts -->
<link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext"
	rel="stylesheet">

<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="../css/custom.css">
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
		<div id="index_slide" class="carousel slide" data-ride="carousel">

			<!-- 指示符 -->
			<ul class="carousel-indicators">
				<li data-target="#index_slide" data-slide-to="0" class="active"></li>
				<li data-target="#index_slide" data-slide-to="1"></li>
				<li data-target="#index_slide" data-slide-to="2"></li>
			</ul>

			<!-- 轮播图片 -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="https://static.runoob.com/images/mix/img_fjords_wide.jpg">
					<div class="carousel-caption">
						<h3>首页轮播图第一张图片</h3>
						<p>描述文字</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="https://static.runoob.com/images/mix/img_nature_wide.jpg">
					<div class="carousel-caption">
						<h3>首页轮播图第二张图片</h3>
						<p>描述文字</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://static.runoob.com/images/mix/img_mountains_wide.jpg">
					<div class="carousel-caption">
						<h3>首页轮播图第三张图片</h3>
						<p>描述文字</p>
					</div>
				</div>
			</div>

			<!-- 左右切换按钮 -->
			<a class="carousel-control-prev" href="#index_slide" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#index_slide" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>

		</div>
		<!-- //banner -->
	</div>
	<!-- //main banner -->

	<!-- following uploaders -->
	<div class="what bg-li py-5" id="what">
		<div class="container py-xl-5 py-lg-3">
			<div class="row myfollow" id="follows">
				<h3 class="title">关注</h3>
				<span><a href="#up1" data-toggle="collapse" data-target="#up1"><img class="uploader" src="../images/girl.jpg" alt=""/></a></span>
				<span><a href="#" data-toggle="collapse" data-target="#up2"><img class="uploader" src="../images/kb.jpeg" alt="" /></a></span>
				<span><a href="#" data-toggle="collapse" data-target="#up3"><img class="uploader" src="../images/oldE.jpg" alt="" /></a></span>
			</div>
			<div class="card mb-3 myfollow-collapse">
				<div id="up1" class="collapse card-body">
					<div class="row align-items-center flex-row">
						<img alt="" src="../images/girl.jpg" />
						<div class="col-lg-10">
							<h4>title</h4>
							<p>Sodales quis.At vero eos et accusam et justo duo dolores
								et ea rebum. Lorem ipsum dolor sit ametLorem ipsum dolor sit
								amet,sed diam nonumy. Consectetur adipiscing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
				</div>
				<div id="up2" class="collapse card-body">
					<div class="row align-items-center flex-row">
						<img alt="" src="../images/kb.jpeg" />
						<div class="col-lg-10">
							<h4>title</h4>
							<p>Sodales quis.At vero eos et accusam et justo duo dolores
								et ea rebum. Lorem ipsum dolor sit ametLorem ipsum dolor sit
								amet,sed diam nonumy. Consectetur adipiscing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
				</div>
				<div id="up3" class="collapse card-body">
					<div class="row align-items-center flex-row">
						<img alt="" src="../images/oldE.jpg" />
						<div class="col-lg-10">
							<h4>title</h4>
							<p>Sodales quis.At vero eos et accusam et justo duo dolores
								et ea rebum. Lorem ipsum dolor sit ametLorem ipsum dolor sit
								amet,sed diam nonumy. Consectetur adipiscing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- //following uploaders -->

	<!-- recommendations -->
	<section class="midd-w3 py-5" id="faq">
		<div class="container py-xl-5 py-lg-3 ListFlow">
			<!-- 第一行 -->
			<div class="row about-bottom-w3l text-center mt-4">
				<div class="col-lg-3 about-grid">
					<div class="about-grid-main">
						<img src="../images/qzgs_1.jpg" alt="" class="img-fluid">
						<a href="#" class="button-w3ls btn "> Read More
							<p>简单描述文字</p>
						</a>
					</div>
				</div>
				<div class="col-lg-3 about-grid">
					<div class="about-grid-main">
						<img src="../images/qzgs_2.jpg" alt="" class="img-fluid">
						<a href="#" class="button-w3ls btn "> Read More
							<p>简单描述文字</p>
						</a>
					</div>
				</div>
				<div class="col-lg-3 about-grid my-lg-0 my-5">
					<div class="about-grid-main">
						<img src="../images/qzgs_3.jpg" alt="" class="img-fluid">
						<a href="#" class="button-w3ls btn "> Read More
							<p>简单描述文字</p>
						</a>
					</div>
				</div>
				<div class="col-lg-3 about-grid">
					<div class="about-grid-main">
						<img src="../images/qzgs_4.jpg" alt="" class="img-fluid">
						<a href="#" class="button-w3ls btn "> Read More
							<p>简单描述文字</p>
						</a>
					</div>
				</div>
			</div>

			<!-- 第二行 -->
			<div class="row about-bottom-w3l text-center mt-4">
				<div class="col-lg-3 about-grid">
					<div class="about-grid-main">
						<img src="../images/qzgs_5.jpg" alt="" class="img-fluid">
						<a href="#" class="button-w3ls btn "> Read More
							<p>简单描述文字</p>
						</a>
					</div>
				</div>
				<div class="col-lg-3 about-grid">
					<div class="about-grid-main">
						<img src="../images/qzgs_6.jpg" alt="" class="img-fluid"> 
						<a href="#" class="button-w3ls btn "> Read More
							<p>简单描述文字</p>
						</a>
					</div>
				</div>
				<div class="col-lg-3 about-grid my-lg-0 my-5">
					<div class="about-grid-main">
						<img src="../images/qzgs_1.jpg" alt="" class="img-fluid">
						<a href="#" class="button-w3ls btn "> Read More
							<p>简单描述文字</p>
						</a>
					</div>
				</div>
				<div class="col-lg-3 about-grid">
					<div class="about-grid-main">
						<img src="../images/qzgs_2.jpg" alt="" class="img-fluid">
						<a href="#" class="button-w3ls btn "> Read More
							<p>简单描述文字</p>
						</a>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- //recommendations -->

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