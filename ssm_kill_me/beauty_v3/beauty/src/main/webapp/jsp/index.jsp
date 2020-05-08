<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>
<% String path = request.getContextPath();%>
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="<%=path%>/css/bootstrap.css">
<!-- Style-CSS -->
<link rel="stylesheet" href="<%=path%>/css/style.css" type="text/css"
	media="all" />
<!-- Font-Awesome-Icons-CSS -->
<link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
<!-- Web-Fonts -->
<link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">

<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="<%=path%>/css/custom.css">
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
				<div class="header d-lg-flex justify-content-between align-items-center py-3 px-sm-3">
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
							<form action="<%=path%>/search" method="post" class="search-bottom-wthree d-flex">
								<input class="search" type="search" name="searchname"  placeholder="Search Here..." required>
								<button class="form-control btn" type="submit">
									<span class="fa fa-search"></span>
								</button>
							</form>
						</div>
						<!-- //search -->
						<!-- 登出&个人中心 -->
						<a class="dwn-w3ls btn mr-1" href="<%=path%>/jsp/usercenter.jsp" target="_blank">
							<span class="fa fa-user-circle-o" title="个人中心"></span>
						</a> 
						<a class="dwn-w3ls btn" href="<%=path%>/jsp/login.jsp" target="_self"> 
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
						<p>${reclist[0].title }</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://static.runoob.com/images/mix/img_mountains_wide.jpg">
					<div class="carousel-caption">
						<h3>首页轮播图第三张图片</h3>
						<p>${updatemap[3][0].title }</p>
					</div>
				</div>
			</div>

			<!-- 左右切换按钮 -->
			<a class="carousel-control-prev" href="#index_slide" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> 
			<a class="carousel-control-next" href="#index_slide" data-slide="next"> 
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

				<c:forEach items="${updateuplist}" var="list" varStatus="status">
					<span>
					<a href="#" data-toggle="collapse" data-target="#up${list.id}">
						<img class="uploader" src="<%=path%>/images/kb.jpeg" alt="" />
					</a>
				</span>
				</c:forEach>
				
			</div>
			<div class="card mb-3 myfollow-collapse">

			<c:forEach items="${updatemap}" var="list" varStatus="status">
				<div id="up${list.getKey() }" class="collapse card-body">
				<c:forEach items="${list.getValue() }" var="blog">
					<div class="row align-items-center flex-row">
						<img alt="" src="<%=path%>/images/oldE.jpg" />
						<div class="col-lg-10">
							<h4>${blog.title }</h4>
							<p>${ fn:substring(blog.content, 0, 100) } ...
								<!-- <br>第一行为数据库数据，这一行开始是模拟数据。模拟登录用户为（Userid=2）
								<br>首页轮播图：最新三个推荐blog的头图
								<br>关注：显示最近三天有更新的关注up主
								<br>手风琴展开：最近三天关注up主更新的blog
								<br>下方：所有推荐blog -->
							</p>
						</div>
					</div>
				
				</c:forEach>
					
				</div>
			</c:forEach>

			</div>

		</div>
	</div>
	<!-- //following uploaders -->

	<!-- recommendations -->
	<section class="midd-w3 py-5" id="faq">
		<div class="container py-xl-5 py-lg-3 ListFlow">
			<div class="row about-bottom-w3l text-center mt-4">
				<c:forEach items="${reclist }" var="blog" varStatus="status">

					<div class="col-lg-3 about-grid ">
						<div class="about-grid-main" >
							<img src="<%=path%>/images/qzgs_6.jpg" alt="" class="img-fluid">
							 <a href="#" class="button-w3ls btn  blogcontent"   id="${blog.id }"> Read More
								<p>${blog.title }</p> 
							</a>
						</div>
					</div>

					<c:if test="${status.index%4==3}">
						<HR style="FILTER:alpha(opacity=100,finishopacity=0,style=3)" width="80%"color=#987cb9 SIZE=3>
					</c:if>
					
				</c:forEach>
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
	<script src="<%=path%>/js/jquery/jquery.min.js"></script>
	<script src="<%=path%>/js/popper.js/umd/popper.min.js"></script>
	<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
	<script src="<%=path%>/js/bootstrap/bootstrap.min.js"></script>
	<script src="<%=path%>/js/jquery.cookie/jquery.cookie.js"></script>
	<script src="<%=path%>/js/js.cookie.min.js"></script>
	<script src="<%=path%>/js/front.js"></script>
	
	<script type="text/javascript">
	
	function getJsonLength(json) {
		  var jsonLength = 0;
		  for (var i in json) {
		    jsonLength++;
		  }
		  return jsonLength;
		}

 	function loaddata(){
 		var updatemap = '<%=request.getAttribute("updatemap")%>'
 		console.info(updatemap)
 		var updatelist = eval('(' + updatemap + ')');
 		var length=getJsonLength(updatelist)
 		//alert(length)
 		/* for(var k in updatemap){
 	        alert("key名称是："+k+",key的值是："+updatemap[k]);
 	    } */
 		var reclist = '<%=request.getAttribute("reclist")%>'
 		console.info(reclist)
	}

    window.onload=loaddata;
    
	</script>
	
	<script type="text/javascript">
        $(function(){
            
            $(".blogcontent").click(function(e){
				console.info(e.target);
                console.info(e.target.id);
				var url='<%=path%>/content?blogid=' + e.target.id
				console.info(url)
				window.location.href=url
            })
        })
 </script>

</body>
</html>