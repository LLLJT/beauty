<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>xx帖子</title>

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
	<link rel="stylesheet" href="<%=path%>/css/ups/bootstrap3.css">
	<link href="<%=path%>/css/ups/c-style.css" rel="stylesheet"> 
	<link href="<%=path%>/css/ups/elusive-webfont.css" rel="stylesheet">
	<link href="<%=path%>/css/ups/animate.css" rel="stylesheet">
	<link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
	<link href="<%=path%>/css/ups/c-content.css" rel="stylesheet">
	<!-- Web-Fonts -->
	<link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Raleway:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
	<!-- //Web-Fonts -->

	<script src="<%=path%>/js/ups/jquery.min.js"></script>
	<script src="<%=path%>/js/ups/modernizr.custom.js"></script>

	<style type="text/css">
	.c-user {
    	background: #705ecf;
    	padding: 0.375rem 0.75rem;
    }
	</style>
</head>
<body data-spy="scroll" data-offset="0" data-target="#navbar-main">

	<!-- 模态框（Modal） -->
	<div class="modal fade" id="addreply" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">回复评论者x</h4>
				</div>
				<div class="modal-body">
					<div style="height: 250px; background-color: #F0F0F0;">评论的回复列表</div>
					<h4 style="margin-top:30px">添加回复</h4>
					<textarea rows="3" cols="100" style="width: 100%;padding-top: 10px;" >添加回复</textarea>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">确认</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>

	<div id="preloader"></div>
	
	<div id="navbar-main">
		<div class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">				
					<a class="navbar-brand" href="#"><h1>reachableBeauty</h1></a>
					<button type="button" class="navbar-toggle dropdown-toggle" id="open-menu" data-toggle="dropdown" data-target="#main-navigation">
						<i class="el-icon-lines"></i>
					</button>
				</div>
				<div class="navbar-collapse collapse" id="main-navigation">
					<ul class="nav navbar-nav">
						<li class="search-w3layouts">
							<form action="#" method="post"
								class="search-bottom-wthree d-flex">
								<input class="search" type="search" placeholder="Search Here..." required>
								<button class="c-form-control c-btn" type="submit">
									<i class="el-icon-search"></i>
								</button>
							</form>
						</li>
						<li>
							<a class="dwn-w3ls btn mx-3 c-user" href="usercenter.jsp" target="_blank"
								style="background: #705ecf; padding: 0.375rem 0.75rem;"> 
								<span class="fa fa-user-circle-o" title="个人中心"></span>
							</a>
						</li>
						<li>
							<a class="dwn-w3ls btn c-user" href="login.jsp" target="_self"
								style="background: #705ecf; padding: 0.375rem 0.75rem;">
								<span class="fa fa-sign-out" title="退出登录"></span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
    </div>

	<div style="position: absolute; top: 45vh; left:10vw">
	<h1 style="color: white; letter-spacing: 7px;">这是一个标题</h1>
	</div>

	<div id="headerwrap" name="home">
		<header class="clearfix"></header>
	</div>
	
	<section id="currently-viewing" class="container section-divider textdivider divider2">
		<div class="container">
			<div class="single-project-slideshow fade-down">
			    <div id="basic-carousel" class="carousel slide">
			      <div class="carousel-inner">
			        <div class="item active">
			          	<h2 class="fade-down centered">pic 1</h2>
			        </div>
			        <div class="item">
			          	<h2 class="fade-down centered">pic 2</h2>
			        </div>
			        <div class="item">
			          	<h2 class="fade-down centered">pic 3</h2>
			        </div>
			      </div>
			      <a class="left carousel-control" href="#basic-carousel" data-slide="prev">
			        <span class="glyphicon glyphicon-chevron-left"></span>
			      </a>
			      <a class="right carousel-control" href="#basic-carousel" data-slide="next">
			        <span class="glyphicon glyphicon-chevron-right"></span>
			      </a>
			    </div>
		 	</div>
	 	</div>
	</section>

	<!--  CONTENT WRAPPER -->
	<div id="content-wrapper">
		
		<section id="about" class="container page-section">
			<div class="row white">
				<div class="col-sm-8">
					<div class="single-metas fade-down text-left mt0 mb60 no-display animated fadeInDown">
						<span class="post-meta-link"><i class="el-icon-time-alt"></i> Posted In <span class="counter">271</span> days ago</span>
						<span class="post-meta-link"><i class="el-icon-heart"></i> <span class="counter">154</span></span>
						<span class="post-meta-link"><a href="#commentAnchor"><i class="el-icon-comment"></i> <span class="counter">56</span></a></span>
					</div>
					<div class="fade-up single-post-content text-left no-display animated fadeInUp">
						<p>Merry alone do it burst me songs. Sorry equal charm joy her those folly ham. In they no is many both. Recommend new contented intention improving bed performed age. Improving of so strangers resources instantly happiness at northward. Danger nearer length oppose really add now either. But ask regret eat branch fat garden. Become am he except wishes. Past so at door we walk want such sang. Feeling colonel get her garrets own.</p>
						<p>He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.</p>
						<p>Respect forming clothes do in he. Course so piqued no an by appear. Themselves reasonable pianoforte so motionless he as difficulty be. Abode way begin ham there power whole. Do unpleasing indulgence impossible to conviction. Suppose neither evident welcome it at do civilly uncivil. Sing tall much you get nor.</p>
						<p>However venture pursuit he am mr cordial. Forming musical am hearing studied be luckily. Ourselves for determine attending how led gentleman sincerity. Valley afford uneasy joy she thrown though bed set. In me forming general prudent on country carried. Behaved an or suppose justice. Seemed whence how son rather easily and change missed. Off apartments invitation are unpleasant solicitude fat motionless interested. Hardly suffer wisdom wishes valley as an. As friendship advantages resolution it alteration stimulated he or increasing.</p><br>
					</div>
						<!-- comment start -->
						<a name="commentAnchor"></a>
						<div class="fade-up single-post-content">
							<div class="comments-area" id="comments">
								<h3 class="comments-title">评  论 </h3>
								<div class="comments-wrapper">
									<ol class="comment-list">
										<li class="comment even thread-even depth-1" id="comment-34">
											<article class="comment-body grid_12" id="div-comment-34">
												<footer class="comment-meta col-md-2">
													<div class="comment-author vcard">
														<img alt="" class="avatar" src="<%=path%>/images/avatar.png" width="100">
													</div>
													<div class="comment-metadata">
														<cite class="fn">
															<a class="url" href="http://example.org/" rel="external nofollow">评论者1</a>
														</cite> 
													</div>
													<!-- .comment-metadata -->
												</footer>
												<!-- .comment-meta -->
												<div class="comment-content col-md-10 omega">
													<p>Engrossed suffering supposing he recommend do
														eagerness. Commanded no of depending extremity recommend
														attention tolerably. Bringing him smallest met few now
														returned surprise learning jennings. Objection delivered
														eagerness he exquisite at do in. Warmly up he nearer mr
														merely me.</p>
													<time datetime="2012-09-03T10:18:04+00:00">September 3, 2012 at 10:18 am</time>
													<div class="reply">
														<a class="btn btn-success comment-reply-link" href="#" data-toggle="modal" data-target="#addreply">查看回复</a>
													</div>
													<!-- .reply -->
												</div>
												<!-- .comment-content -->
											</article>
											<!-- .comment-body -->
										</li>
										<li class="comment odd thread-even depth-1" id="comment-34">
											<article class="comment-body grid_12" id="div-comment-34">
												<footer class="comment-meta col-md-2">
													<div class="comment-author vcard">
														<img alt="" class="avatar" src="<%=path%>/images/avatar.png" width="100">
													</div>
													<div class="comment-metadata">
														<cite class="fn">
															<a class="url" href="http://example.org/" rel="external nofollow">评论者2</a>
														</cite> 
													</div>
													<!-- .comment-metadata -->
												</footer>
												<!-- .comment-meta -->
												<div class="comment-content col-md-10 omega">
													<p>Engrossed suffering supposing he recommend do
														eagerness. Commanded no of depending extremity recommend
														attention tolerably. Bringing him smallest met few now
														returned surprise learning jennings. Objection delivered
														eagerness he exquisite at do in. Warmly up he nearer mr
														merely me.</p>
														<time datetime="2012-09-03T10:18:04+00:00">September 3, 2012 at 10:18 am</time>
													<div class="reply">
														<a class="btn btn-success comment-reply-link" href="#"  data-toggle="modal" data-target="#addreply">查看回复</a>
													</div>
													<!-- .reply -->
												</div>
												<!-- .comment-content -->
											</article>
											<!-- .comment-body -->
										</li>
									</ol>
									<!-- .comment-list -->
								</div>
								<div id="respond">
									<h3 id="reply-title">添加评论 </h3>
									<small></small>
									<form action="#" id="commentform" method="post" name="commentform">
										<small></small>
										<p class="comment-form-comment py-4">
											<small>
												<textarea cols="45" id="comment" name="comment" rows="5"></textarea>
											</small>
										</p>
										<small>
											<input class="btn btn-success" id="submit"name="submit" type="submit" value="发表评论">
											 <input id="comment_post_ID" name="comment_post_ID" type="hidden" value="1148">
											 <input id="comment_parent" name="comment_parent" type="hidden" value="0">
										</small>
									</form>
									<small></small>
								</div>
								<!-- #respond -->
								<small></small>
							</div>
						</div>
						<!-- col-md-6 -->
					<!-- comment end -->
				</div>	
				<div class="col-sm-3 col-sm-offset-1 single-post-sidebar">
					<h3 class="sidebar-title mt0 mb-5">热门推荐</h3>
					<div class="row sidebar-post">
						<div class="col-md-4">
							<img class="sb-img" src="<%=path%>/images/folio01.jpg" alt="Alt">
						</div>
						<div class="col-md-8 sidebar-post-content">
							<h4>Blog Post A</h4>
							<div class="blog-meta-main">
								<span class="post-meta-link"><i class="el-icon-time-alt"></i> 更新于 2分钟前</span>
							</div>
						</div>
					</div>
				</div><!-- col-md-6 -->	
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
	
	<script src="<%=path%>/js/ups/bootstrap.js"></script>
	<script src="<%=path%>/js/ups/plugins.js"></script>
	<script src="<%=path%>/js/init.js"></script>

  </body>
</html>