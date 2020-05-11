<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人中心</title>

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
								<input class="search" type="search" placeholder="Search Here..."
									required="">
								<button class="form-control btn" type="submit">
									<span class="fa fa-search"></span>
								</button>
							</form>
						</div>
						<!-- //search -->
						<!-- 登出&个人中心 -->
						<a class="dwn-w3ls btn mr-1" href="usercenter.jsp" target="_blank">
							<span class="fa fa-user-circle-o" title="个人中心"></span>
						</a> <a class="dwn-w3ls btn" href="login.jsp" target="_self"> <span
							class="fa fa-sign-out" title="退出登录"></span>
						</a>
						<!-- //logout&usercenter -->
					</div>
				</div>
			</div>
		</header>
		<!-- //header -->
	
		<!-- navbar -->
		<div class="navbar nav-wrapper smoothie">
			<div class="container">
				<div class="row" style="width: 100%; height: 300px">
					<div class="up_center">
						<a href="index.jsp"><h2>xx的个人中心</h2></a>
					</div>
					<div class="col-sm-12">
						<div id="navbar-1">
							<ul class="nav navbar-nav navbar-center text-center">
								<li>
									<a href="#" role="button" onclick="change_frame('user_follow.jsp')">
										<span class="fa fa-heart-o mr-2"></span>关注
									</a>
								</li>
								<li>
									<a href="#" role="button" onclick="change_frame('user_love.jsp')">
										<span class="fa fa-star-o mr-2"></span>收藏
									</a>
								</li>
								<li>
									<a href="" role="button" onclick="change_frame('user_info.jsp')">
										<span class="fa fa-cog mr-2"></span>个人信息
									</a>
								</li>
								<li>
									<a href="#" role="button" onclick="change_frame('user_setting.jsp')">
										<span class="fa fa-pencil mr-2"></span>设置
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //navbar -->

	</div>
	<!-- //main banner -->
	
	<!-- 子页面 -->
	<iframe id="userframe" src="user/user_follow.jsp">
	
	</iframe>
	
	<!-- //子页面 -->

	<!-- JavaScript files-->
	<!-- <script src="../js/jquery/jquery.min.js"></script>
	<script src="../js/popper.js/umd/popper.min.js"></script>
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<script src="../js/jquery.cookie/jquery.cookie.js"> </script>
	<script src="../js/js.cookie.min.js"></script>
	<script src="../js/front.js"></script> -->
	
	<script type="text/javascript">
	function change_frame(value) {
		var url="user/"+value;
		var frame=document.getElementById("userframe");
		frame.src=url;
		frame.style.height = frame.contentWindow.document.documentElement.scrollHeight + 'px'
	}
	</script>
</body>
</html>