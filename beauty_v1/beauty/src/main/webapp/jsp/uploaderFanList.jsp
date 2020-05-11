<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>xx 的 主页</title>
<% String path=request.getContextPath();%>
<link href="<%=path%>/css/bootstrap.css" rel="stylesheet">
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 
<link
	href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900|Dancing+Script:400,700|Raleway:400,100,300,700,900|Reenie+Beanie&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<link href="<%=path%>/css/users/userspace_style.css" rel="stylesheet">
<link rel="stylesheet" href="<%=path%>/css/custom.css">
<link rel="stylesheet" href="<%=path%>/css/users/follow.css">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="../css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="../css/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	
	<link href="../css/ups/animate.css" rel="stylesheet">
	<link href="../css/ups/newstyle.css" rel="stylesheet"> 
    
	<!-- Web-Fonts -->
	<link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Raleway:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
	<!-- //Web-Fonts -->

	<script src="../js/ups/jquery.min.js"></script>
	<script src="../js/ups/modernizr.custom.js"></script>


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
	</div>
	<!-- //main banner -->

	<!-- head -->
	<div class="py-5 banner_w3lspvt-2">
		<div class="container pb-xl-5 pb-lg-3">
			<div class="py-xl-4 ">
			<c:forEach items="${uplist}" var="ulist" begin="0" end="0">
				<div class="col-lg-12 mt-5 row">
					<div class="col-lg-2">
						<img alt="" src="<%=path%>/<c:out value="${ulist.profileimg}" />" style="max-width: 100px;">
					</div>
					<div class="col-lg-8  ">
						<h2 class="mb-4"><c:out value="${ulist.username}"></c:out></h2>
						<h4>欢迎来到我的空间</h4>
					</div>
					<div class="col-lg-2 mt-4"
						style="height: 40px; text-align: center;">
						<a href="#" class="btn button-style">关注 Follow</a>
						<div class="mt-3"><a href="${pageContext.request.contextPath}/center/user_follow?followerid=${ulist.id}">粉丝数：${fan}</a></div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- //head -->
	
	<!-- order nav -->
	<section class="why bg-li py-4" id="why">
		<div class="container">
			<div class="row c-acolor">
			<span class="col-md-1 fa fa-sort-amount-desc fa-2x mr-2"></span>
				<div class="col-md-2">
					<h4><a href="#">粉丝列表<i class="fa fa-clock-o ml-2"></i></a></h4>
				</div>
				
				
			</div>
		</div>
	</section>
	<!-- //order nav -->
<!-- 粉丝列表 -->
<section class="white-wrapper allow-overflow">
		<div class="">
			<ul class="relation-list">
			<c:forEach items="${fanlist}" var="list" >
				<li class="list-item row">
					<a href="${pageContext.request.contextPath}/center/uploader?uploaderid=<c:out value="${list.id}"/>"  target="_blank" class="cover"> 
						<img src="<%=path%>/<c:out value="${list.profileimg}" />" alt="星s巨寒">
					</a>
					<div class="content">
						<a href="https://space.bilibili.com/12065306/" target="_blank"
							class="title"> <span><c:out value="${list.username}" /></span>
						</a>
						<p title="<c:out value="${list.introduction}" />"
							class="desc"><c:out value="${list.introduction}" /></p>
						<div class="fans-action">
							<div class="be-dropdown fans-action-btn fans-action-follow">
								<span class="fans-action-text">已关注</span>
							</div>
						</div>
					</div></li>
		</c:forEach>
				
			</ul>
</div></section>


	<!--  CONTENT WRAPPER -->
	
	<!-- CONTENT WRAPPER -->

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
	<!-- //copyright -->

	<!-- JavaScript files-->
	
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<script src="../js/ups/plugins.js"></script>
	<script src="../js/ups/init.js"></script>

	<script type="text/javascript">
	$(function(){
		console.log('${fan}');
		console.log('${fanlist}');
		console.log('${uplist}');
		
		
	});
	
	</script>






</body>
</html>