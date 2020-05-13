<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>xx 的 主页</title>

	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tag Keywords -->
<% String path = request.getContextPath();%>
	<!-- Custom-Files -->
	<link rel="stylesheet" href="<%=path%>/css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="<%=path%>/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	
	<link href="<%=path%>/css/ups/animate.css" rel="stylesheet">
	<link href="<%=path%>/css/ups/newstyle.css" rel="stylesheet"> 
    
	<!-- Web-Fonts -->
	<link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Raleway:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
	<!-- //Web-Fonts -->

	<script src="<%=path%>/js/ups/jquery.min.js"></script>
	<script src="<%=path%>/js/ups/modernizr.custom.js"></script>


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
							<a href="<%=path%>/index"><span class="fa fa-linode mr-2"></span>reachableBeauty</a>
						</h1>
					</div>
					<!-- //logo -->
					<div class="d-flex mt-lg-1 mt-sm-2 mt-3 justify-content-center">
						<!-- search -->
						<div class="search-w3layouts mr-3">
							<form action="<%=path%>/jsp/searchresult.jsp" method="post" class="search-bottom-wthree d-flex">
								<input class="search" type="search" name="searchname"  placeholder="Search Here..." required>
								<button class="form-control btn" type="submit">
									<span class="fa fa-search"></span>
								</button>
							</form>
						</div>
						<!-- //search -->
						<!-- 登出&个人中心  --> <!-- todo:更换索引userspace的url -->
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
							<h2 class="mb-4">
								<c:out value="${ulist.username}"></c:out>
							</h2>
							<h4>欢迎来到我的空间</h4>
						</div>
						<div class="col-lg-2 mt-4" style="height: 40px; text-align: center;">
							<a href="#" class="btn button-style">关注 Follow</a>
							<div class="mt-3">
								<a href="${pageContext.request.contextPath}/center/upfanlist?id=${ulist.id}">粉丝数：${fan}</a>
							</div>
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
			<span id="order" class="col-md-1 fa fa-sort-amount-desc fa-2x mr-2" title="降序排列" ></span>
				<div class="col-md-2">
					<h4><a href="javascript:void(0);" onclick="ajaxgetrst('time')">时间<i class="fa fa-clock-o ml-2"></i></a></h4>
				</div>
				<div class="col-md-2">
					<h4><a href="javascript:void(0);" onclick="ajaxgetrst('star')">热度<i class="fa fa-thermometer-full ml-2"></i></a></h4>
				</div>
			</div>
		</div>
	</section>
	<!-- //order nav -->

	<!--  CONTENT WRAPPER -->
	<div id="content-wrapper" class="c-newfont">		
		<section id="about" class="page-section">
			<div class="row white">
				<div class="col-sm-9"  id="rstbloglist">

					<!-- first blog -->
					<div class="row">
						<div class="col-md-12 blog-bg">
							<div class="col-md-2 col-sm-2 col-xs-2 blog-meta fade-down float-left">
								<h3>Most</h3>
								<h3>Popular</h3>
								<div class="blog-counts">
									<h5><i class="fa fa-comment"></i><span class="counter" id="n-cmt"></span></h5>
									<h5><i class="fa fa-heart"></i><span class="counter" id="n-star"></span></h5>
								</div>
							</div>
							<div class="grid mask">
								<figure>
									<img class="img fade-down" src="<%=path%>/images/bg2.jpg">
									<figcaption>
										<a class="btn btn-primary btn-lg" href="#" id="firstcontent"><i class="fa fa-link"></i></a>
									</figcaption>
								</figure>
							</div>
							<div id="firstblog" class="col-md-10 col-md-offset-2 col-sm-10 col-xs-10 col-xs-offset-2 blog-content fade-up"></div>
						</div>
					</div>

					<!-- normal blog list -->
					<div class="upblog-container">
						<div class="upblog">
							<div class="row p-4 upblog-word">
								<div class="col-md-4">
									<img alt="一张图片" src="/beauty/images/portfolio/folio-2.jpeg">
								</div>
								<div class="col-md-8">
									<div class="my-2 btn" id="1" title="Read More" onclick="opencontent(this)">
										<h4>颜九-粉底液测评（秋冬装）</h4>
									</div>
									<p>红榜
										粉底液 牌子：欧莱雅 色号:#20（红帽子）
										特点：适合大多数肤色偏白的妹子，需分区域送上妆，分左右半边脸，用刷子上妆效果好；轻薄不易闷痘，非常有高级感的哑光妆，但遮瑕效果差。
										粉底液轻薄测试方法
										先取一张无纺纱布在纱布上挤几滴粉底液，并放在加湿器的出气口。如果有水蒸气透过纱布冒出来，则说明这款粉底液非常轻薄， ...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			
				<div class="col-sm-3 col-sm-offset-1 single-post-sidebar">
					<h3 class="sidebar-title mt0 mb-5">最近更新</h3>
					<div id="noupdate"></div>

					<div id="rstdiv"></div>

				</div>
			</div>
		</section>

	</div>
	<!-- CONTENT WRAPPER -->

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
				<a href="#home" class="move-top text-center"> <span
					class="fa fa-level-up" aria-hidden="true"></span>
				</a>
				<!-- //move top icon -->
			</div>
		</div>
	</div>
	<!-- //copyright -->

	<!-- JavaScript files-->
	
	<script src="<%=path%>/js/bootstrap/bootstrap.min.js"></script>
	<script src="<%=path%>/js/ups/plugins.js"></script>
	<script src="<%=path%>/js/ups/init.js"></script>
	<script src="<%=path%>/js/custom/getcookie.js"></script>

	<script type="text/javascript" src="<%=path%>/js/custom/getsidebar.js"></script>
	<script type="text/javascript">
	
		var upid=<%=request.getParameter("uploaderid")%>
	
		var target = "<%=path %>/side/getupdate"
		var testpicurl = "<%=path%>/images/folio01.jpg"
		
		window.onload=function(){
			
			if(getsidebar(target,upid)){
				//alert("空")
				$("#noupdate").html("<h5>博主暂无更新</h5><h5>看看推荐博客</h5>")
				target= "<%=path %>/side/getrec"
				getsidebar(target,"")
			}
			$("#noupdate").html("")
			console.log('${fan}');
			console.log('${fanlist}');
			console.log('${uplist}');
			
			var url="<%=path%>/getupblog"
				$.ajax({
					url: url,
					type: 'get',
					dataType:'JSON',
					data:{"upid":upid }  ,
					success:function(response,status,xhr){
						console.log(response)
						console.log(status)
						console.log(xhr)
						var content=response.rstblog.content.substring(0,100)
						var href="<%=path%>/content?blogid="+response.rstblog.id
						$("#firstcontent").attr("href",href)
						$("#n-cmt").text(response.n_cmt);
						$("#n-star").text(response.n_star);
						$("#firstblog").html("<h2>"+response.rstblog.title+"</h2>" +"<pre>"+content+"</pre>" )
						//alert("success popular")
					},
					error:function(){
						alert("error");
					}
				});
		}
		
		$("#order").click(function(){
			if($("#order").hasClass("fa-sort-amount-desc")){
				// if desc
				$("#order").attr("title","升序排列");
				$("#order").removeClass("fa-sort-amount-desc");
				$("#order").addClass("fa-sort-amount-asc");
				var target=$("#rstbloglist").attr("name");
				if(target!=null) ajaxgetrst(target)
			}else{  //asc
				$("#order").attr("title","降序排列");
				$("#order").removeClass("fa-sort-amount-asc");
				$("#order").addClass("fa-sort-amount-desc");
				var target=$("#rstbloglist").attr("name");
				if(target!=null) ajaxgetrst(target)
			}
		});
		
	
		function ajaxgetrst(target) {
			var url="<%=path%>/switchorder"
			// desc: order=true; asc: order=false
			var order=($("#order").hasClass("fa-sort-amount-desc"))

			$.ajax({
				url: url,
				type: 'get',
				dataType:'JSON',
				data:{"upid":upid,"keyword":target, "order":order }  ,
				success:function(response,status,xhr){
					console.log(response)
					console.log(status)
					console.log(xhr)
					$("#rstbloglist").attr("name",target);
					if(response.rstlist!=null){
						var myhtml='<div class="upblog-container">'
						var n = response.rstlist.length
						for (i = 0; i < n; i++) {
							
							var id = response.rstlist[i].id
							var title=  response.rstlist[i].title
							var content =  response.rstlist[i].content.substring(0,100)
							var picurl = response.rstlist[i].picUrl1
							picurl = "<%=path%>/images/portfolio/folio-2.jpeg";
							
							var ns = response.stararr[i]
							var nc = response.cmtarr[i]
							
							myhtml += (  '<div class="upblog">'
									+ '<div class="row p-4 upblog-word">'
									+ '<div class="col-md-4  text-center">'
									+ '<img alt="一张图片" src="' + picurl + '">'
									+ '<span class="fa fa-heart"></span>' + ns
									+ '<span class="fa fa-comment" style="padding-left:20px;"></span>' + nc
									+ '</div>'
									+ '<div class="col-md-8">'
									+ '<div class="my-2 btn" id="' + id + '" title="Read More" onclick="opencontent(this)">'
									+ '<h4>' + title + '</h4>'
									+ '</div>'
									+ '<p>' + content + '</p>'
									+ '</div> </div> </div> '	)
						}
						myhtml += ' </div>'
						rstbloglist.innerHTML=myhtml
					}else{
						rstbloglist.innerHTML="<h3>暂无结果</h3>"	
					}
				},
				error:function(){
					alert("error");
				}
			});
		}

	</script>


</body>
</html>