<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>搜索结果</title>
<% String path = request.getContextPath();%>
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="<%=path%>/css/bootstrap.css">
<!-- Style-CSS -->
<link rel="stylesheet" href="<%=path%>/css/style.css" type="text/css" media="all" />
<!-- Font-Awesome-Icons-CSS -->
<link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
<!-- Web-Fonts -->
<link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">

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

<body onload="ajaxgetrst('th')">
<%
request.setCharacterEncoding("UTF-8");
String searchname = request.getParameter("searchname");   
%>
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
							<form action="#" method="post" class="search-bottom-wthree d-flex">
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
						<input class="form-control" type="text" placeholder="Input the keyword..." name="searchname" required>
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
				<span class="btn fa fa-th fa-2x mr-5" id="thumbnail" onclick="ajaxgetrst('th')"></span>
				<span class="btn fa fa-th-list fa-2x mr-5" id="th-list" onclick="ajaxgetrst('th-list')"></span>
			</div>
		</div>
	</div>
	<!-- result -->
	<div class="price-sec">
		<div class="container pb-xl-5 py-lg-3">
			<div class="inner_sec_info_w3_info mt-3">
				
				<div class="row mx-2 mb-4">
					<h5>
						<font color="#0F5096" size="5"><%=searchname %></font> 的 搜索结果：
					</h5>
				</div>
				
				<div class="row price-grid-main" id="rstdiv">

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
					<p class="text-bl let">Copyright &copy; 2020. reachableBeauty All rights reserved.</p>
				</div>
				<!-- //copyright -->
				<!-- move top icon -->
				<a href="#home" class="move-top text-center"> 
					<span class="fa fa-level-up" aria-hidden="true"></span>
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
	<script src="<%=path%>/js/jquery.cookie/jquery.cookie.js"> </script>
	<script src="<%=path%>/js/js.cookie.min.js"></script>
	<script src="<%=path%>/js/front.js"></script>
	
	<script type="text/javascript">
	function ajaxgetrst(th) {
		var keyword="<%=searchname %>"
		var url="<%=path%>/newsearch"
		/* alert(keyword,url) */
		$.ajax({
			url: url,
			type: 'post',
			dataType:'JSON',
			data:{"keyword":keyword }  ,
			success:function(response,status,xhr){
				console.log(response)
				console.log(status)
				console.log(xhr)
				/* alert("succeed"); 
				alert(th)*/
				switchoutput(th,response)
			},
			error:function(){
				alert("error");
			}
		});
	}

	function switchoutput(th,data) {
		var n = data.rstlist.length
		var myhtml=""
		if(th=="th"){
				for (i = 0; i < n; i++) {
					var id = data.rstlist[i].id
					var title=  data.rstlist[i].title
					var content =  data.rstlist[i].content
					var picurl = data.rstlist[i].picUrl1
					picurl = "<%=path%>/images/portfolio/folio-2.jpeg";
					myhtml += ('<div class="col-lg-3 col-sm-6 price-info mb-4">'
							+ '<div class="prices p-4">'
							+ '<div class="prices-bottom text-center">'
							+ '<img alt="一张图片"  src="' + picurl + '"  style="max-width: 200px; max-height: 160px;" />'
							+ '<div class="my-2 btn"  id="' + id + '">'
							+ '<h4>' + title + '</h4>'
							+ '</div>'
							+ '<p>' + content.substring(0,170) + ' ...</p>'
							+ '</div> </div> </div> '
					)
					/* console.info(myhtml) */
				}
		}else{
			for (i = 0; i < n; i++) {
				var id = data.rstlist[i].id
				var title=  data.rstlist[i].title
				var content =  data.rstlist[i].content
				var picurl = data.rstlist[i].picUrl1
				picurl = "<%=path%>/images/portfolio/folio-2.jpeg";
				myhtml += ('<div class="price-grid-main price-info my-4">'
						+ '<div class="row p-4 prices prices-bottom" style="height: auto;">'
						+ '<div class="col-md-3">'
						+ '<img alt="一张图片"  src="' + picurl + '"  style="max-width: 200px; max-height: 160px;" />'
						+ '</div>'
						+ '<div class="col-md-9">'
						+ '<div class="my-2 btn"  id="' + id + '">'
						+ '<h4>' + title + '</h4>'
						+ '</div>'
						+ '<p>' + content.substring(0,170) + ' ...</p>'
						+ '</div> </div> </div> '
				)
			}
		}
		rstdiv.innerHTML=myhtml	
		}

	</script>
	
</body>
</html>