<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的关注</title>
<% String path=request.getContextPath();%>
<link href="<%=path%>/css/bootstrap.css" rel="stylesheet">
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 
<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900|Dancing+Script:400,700|Raleway:400,100,300,700,900|Reenie+Beanie&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<link href="<%=path%>/css/users/userspace_style.css" rel="stylesheet">
<link rel="stylesheet" href="<%=path%>/css/custom.css">
<link rel="stylesheet" href="<%=path%>/css/users/follow.css">

</head>

<body>
	<section class="white-wrapper allow-overflow">
		<div class="section-inner">
			<div class="container">
				<div class="row mb60 text-center">
					<div class="col-sm-6 text-left match-height">
						<h3 class="section-title">我的关注</h3>
						<h4>总关注数<span class="badge"><c:out value="${fcount}" escapeXml="true" default="0"></c:out></span></h4>
					</div>
				</div>
			</div>
			<div class="row nopaddingleftright">
			
				<c:forEach items="${flist}" var="list" varStatus="index" begin="0" end="3" step="1">
					<div class="team-item col-md-3 match-height nopaddingleftright">
						<div class="hover-effect smoothie match-height">
							<a href="#" class="smoothie"> 
								<img src="<%=path%>/<c:out value="${list.profileimg}" />" alt="Image" class="img-responsive smoothie">
							</a>
							<div class="hover-overlay smoothie text-center">
								<div class="vertical-align-bottom">
									<h4><c:out value="${list.username}" /></h4>
								</div>
							</div>
							<div class="hover-caption dark-overlay smoothie text-center">
								<div class="vertical-align-top">
									<p class="mb20"><c:out value="${list.introduction}" /></p>
								</div>
								<div class="vertical-align-bottom">
									<a href="${pageContext.request.contextPath}/center/uploader?uploaderid=<c:out value="${list.id}" />" class="btn btn-primary mb20" target="_blank">进入空间 <i class="fa fa-angle-right smoothie"></i></a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				
			</div>
			
			<!-- 全部关注 从第5个开始 -->
			<ul class="relation-list">
				<c:forEach items="${flist}" var="list" varStatus="index" begin="4" step="1">
					<li class="list-item row">
						<a href="${pageContext.request.contextPath}/center/uploader?uploaderid=<c:out value="${list.id}"/>" target="_blank" class="cover"> 
							<img src="<%=path%>/<c:out value="${list.profileimg}" />" alt="头像图片">
						</a>
						<div class="content">
							<a href="https://space.bilibili.com/12065306/" target="_blank" class="title"> 
								<span><c:out value="${list.username}" /></span>
							</a>
							<p title="<c:out value="${list.introduction}" />" class="desc">
								<c:out value="${list.introduction}" />
							</p>
							<div class="fans-action">
								<div class="be-dropdown fans-action-btn fans-action-follow">
									<span class="fans-action-text">已关注</span>
								</div>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>

		</div>
	</section>
	
	<script src="<%=path%>/js/jquery/jquery.min.js"></script>
	<script src="<%=path%>/js/popper.js/umd/popper.min.js"></script>
	<script src="<%=path%>/js/bootstrap/bootstrap.min.js"></script>
	<script src="<%=path%>/js/jquery.cookie/jquery.cookie.js"></script>
	<script src="<%=path%>/js/js.cookie.min.js"></script>
	<script src="<%=path%>/js/front.js"></script>

	<script src="<%=path%>/js/dtpicker/moment-with-locales.min.js"></script>
	<script src="<%=path%>/js/dtpicker/tempusdominus-bootstrap-4.js"></script>
	<script src="<%=path%>/js/dtpicker/moment-timezone-with-data-2012-2022.min.js"></script>
	<script src="<%=path%>/js/dtpicker/base.js"></script>
	<script src="<%=path%>/js/custom/getcookie.js"></script>

	<script type="text/javascript">
		$(function() {
			var str = getCookie("user");
			var followerid = str.split("#")[2];
			if (followerid == null || followerid == "") {
				alert("请先登录");
				window.href.location = "${pageContext.request.contextPath}/user/tologin"
			}
			/* var data={"followerid",followerid}; */
			var url="<%=path%>/center/user_follow?followerid=" + followerid
			$.ajax({
				url : url,
				type : "GET",
				dataType: "html",
				success:function(response,status,xhr){
					/* console.log(response)*/
					console.log(status)
					console.log(xhr) 
				}
			});
		});
	</script>

</body>
</html>